<?php

require '../../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$eClass = new PilhCaleg($connString);

$requestData = $_REQUEST;

$kode_caleg = $_GET['caleg'];
$dapil = $_GET['dapil'];
$partai = $_GET['partai'];

$columns = array(
    0 => 'kode_caleg',    
    1 => 'nama_caleg',
    2 => 'nama_partai',
    3 => 'suara_caleg',
    4 => 'persentase_caleg'
);

$eClass->getData($requestData, $columns, $kode_caleg, $dapil, $partai);

class PilhCaleg {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col, $kode_caleg, $dapil, $partai) {
        $this->data = $this->getRecords($req, $col, $kode_caleg, $dapil, $partai);
        echo json_encode($this->data);
    }

    function getRecords($req, $col, $kode_caleg, $dapil, $partai) {
               
        //echo $sqltot = "CALL SpDataSimulasiCaleg('$dapil','$kode_caleg','$partai')";
        $sqlA = "create temporary table SuaraCaleg	
		SELECT p.kode_partai, sc.kode_dapil, c.kode_caleg, c.nama_caleg, p.nama_partai, sum(sc.jumlah_suara_caleg) as suara_caleg,
			(round((sum(sc.jumlah_suara_caleg) / (select sum(jumlah_suara_caleg) from suara_caleg where kode_dapil = '$dapil'))*100,2)) as persentase_caleg
			FROM partai p
		join suara_caleg sc on sc.kode_partai = p.kode_partai
		join caleg c on c.kode_caleg = sc.kode_caleg
		where sc.kode_dapil = '$dapil'
		group by p.kode_partai, sc.kode_dapil, c.kode_caleg, c.nama_caleg, p.nama_partai
		order by persentase_caleg desc";
        $qA = mysqli_query($this->conn, $sqlA) or die("error fetch data: ");
        
        $sqlB = "create temporary table SuaraCalegSimulasi1
		select '$partai' as kode_partai, '$dapil' as kode_dapil, (select kode_caleg from caleg where kode_caleg = '$kode_caleg') as kode_caleg,
		(select nama_caleg from caleg where kode_caleg = '$kode_caleg') as nama_caleg,
		(select nama_partai from partai where kode_partai = '$partai') as nama_partai, 
		(select 
			case 
				when sum(jumlah_suara_caleg) is null then 0 
				else sum(jumlah_suara_caleg) 
			end as suara
			from suara_caleg 
			where kode_caleg = '$kode_caleg'
			and kode_dapil = '$dapil'
		) as suara_caleg,
		round((select case when sum(jumlah_suara_caleg) is null then 0 else sum(jumlah_suara_caleg) end as suara from suara_caleg where kode_caleg = '$kode_caleg' and kode_dapil = '$dapil')/(select sum(suara_caleg) from SuaraCaleg) * 100, 2) as persentase_caleg";
        $qB = mysqli_query($this->conn, $sqlB) or die("error fetch data: ");

        $sqlC = "delete from SuaraCaleg 
		where kode_caleg = '$kode_caleg' 
		and kode_partai = (select p.kode_partai from caleg c join partai p on p.kode_partai = c.kode_partai where c.kode_caleg = '$kode_caleg')";
        $qC = mysqli_query($this->conn, $sqlC) or die("error fetch data: ");
        
        $sqltot = "select kode_caleg, nama_caleg, nama_partai, sum(suara_caleg) as suara_caleg, sum(persentase_caleg) as persentase_caleg from
	(
	SELECT * from SuaraCaleg 
	union all
	select * from SuaraCalegSimulasi1
	) as hasil";
        $sqlSearch = $sqltot;
        $sqltot .= " group by kode_caleg, nama_caleg, nama_partai";
        
        $sql = $sqltot;
        
        $qtot = mysqli_query($this->conn, $sqltot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qtot);
        $totalFiltered = $totalData;
        
//        $dest1 = "drop TEMPORARY TABLE SuaraCaleg";
//	$dest2 = "drop TEMPORARY TABLE SuaraCalegSimulasi1";
//        $qdest1 = mysqli_query($this->conn, $dest1) or die("error fetch data: ");
//        $qdest2 = mysqli_query($this->conn, $dest2) or die("error fetch data: ");
        

        if (!empty($req['search']['value'])) {
            
            $sql = $sqlSearch;

            $sql .= " WHERE kode_caleg LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= " OR nama_caleg LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR nama_partai LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= " group by kode_caleg, nama_caleg, nama_partai";            

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);
           
            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {     

            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
              " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
              " . $req['length'] . " ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User();

        
        while ($row = mysqli_fetch_assoc($query)) {            
            $nestedData = [];
            
            $nestedData[] = $row['kode_caleg'];
            $nestedData[] = $row['nama_caleg'];
            $nestedData[] = $row['nama_partai'];
            $nestedData[] = '<div align="right">'.number_format($row['suara_caleg']).'</div>';
            $nestedData[] = '<div align="right">'.$row['persentase_caleg'].'</div>';

            $data[] = $nestedData;            
        }

        if ($totalData > 0) {
            $json_data = array(
                "draw" => intval($req['draw']),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );
        } else {
            $json_data = array(
                "draw" => 0,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }
        return $json_data;
    }

}
