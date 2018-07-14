
<?php

require '../config/class.php';

$db = new dbObj();
$connString = $db->getConstring();
$eClass = new PilhCaleg($connString);

$requestData = $_REQUEST;

$idprov = '';
$iddapil = $_GET['dapil'];

$columns = array(
    0 => 'kode_caleg',
    1 => 'kode_caleg',
    2 => 'nama_caleg',
    3 => 'nama_partai',
    4 => 'suara_caleg',
    5 => 'suara_partai'
);

$eClass->getData($requestData, $columns, $idprov, $iddapil);

class PilhCaleg {

    protected $conn;
    protected $data = [];

    function __construct($connString) {
        $this->conn = $connString;
    }

    public function getData($req, $col, $idprov, $iddapil) {
        $this->data = $this->getRecords($req, $col, $idprov, $iddapil);
        echo json_encode($this->data);
    }

    function getRecords($req, $col, $idprov, $iddapil) {
        // $sqlTot = "SELECT kode_kabupaten_kota, nama_provinsi, nama_kabupaten_kota ";
        // $sqlTot .= " FROM ".$tb_name;
        // $sqlTot .= " JOIN provinsi ON provinsi.kode_provinsi = kabupaten_kota.kode_provinsi";
        //$sql = "CALL SPSimulasiStep1('$iddapil')";
        $sqltot = "select kode_caleg, nama_caleg, nama_partai, nama_provinsi, nama_dapil, sum(suara_caleg) as suara_caleg, sum(suara_partai) as suara_partai ";
        $sqltot .= "from (SELECT c.kode_caleg, c.nama_caleg, p.nama_partai, pr.nama_provinsi, d.nama_dapil, sum(sc.jumlah_suara_caleg) as suara_caleg, 0 as suara_partai ";
        $sqltot .= "from dapil d join caleg c on c.kode_dapil = d.kode_dapil join partai p on p.kode_partai = c.kode_partai join provinsi pr on pr.kode_provinsi = d.kode_provinsi ";
        $sqltot .= "join suara_caleg sc on sc.kode_caleg = c.kode_caleg and sc.kode_dapil = d.kode_dapil and sc.kode_partai = p.kode_partai ";
        $sqltot .= "where d.kode_dapil = '$iddapil' group by c.nama_caleg, p.nama_partai, pr.nama_provinsi, d.nama_dapil ";
        $sqltot .= "union all select clg.kode_caleg, clg.nama_caleg, prt.nama_partai, prv.nama_provinsi, dpl.nama_dapil, 0 as suara_caleg, ";
        $sqltot .= "sum(sprt.jumlah_suara_partai) as suara_partai from dapil dpl join suara_partai sprt on sprt.kode_dapil = dpl.kode_dapil ";
        $sqltot .= "join partai prt on prt.kode_partai = sprt.kode_partai join caleg clg on clg.kode_dapil = dpl.kode_dapil and clg.kode_partai = prt.kode_partai ";
        $sqltot .= "join provinsi prv on prv.kode_provinsi = dpl.kode_provinsi where dpl.kode_dapil = '$iddapil' ";                
        $sqltot .= "group by clg.kode_caleg, clg.nama_caleg, prt.nama_partai, prv.nama_provinsi, dpl.nama_dapil ";
        $sqltot .= ") as temp ";
        $sqlSearch = $sqltot;
        $sqltot .= "group by kode_caleg, nama_caleg, nama_partai, nama_provinsi, nama_dapil ";        

        $sql = $sqltot;

        $qtot = mysqli_query($this->conn, $sqltot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($qtot);
        $totalFiltered = $totalData;

        if (!empty($req['search']['value'])) {
            
            $sql = $sqlSearch;

            $sql .= " WHERE kode_caleg LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= " OR nama_caleg LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR nama_partai LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= "group by kode_caleg, nama_caleg, nama_partai, nama_provinsi, nama_dapil ";

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

        $a = 0;
        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $user->radioAct($row['kode_caleg']);
            $nestedData[] = $row['kode_caleg'];
            $nestedData[] = $row['nama_caleg'];
            $nestedData[] = $row['nama_partai'];
            $nestedData[] = $row['suara_caleg'];
            $nestedData[] = $row['suara_partai'];

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

//end class kab/kota

//end class user