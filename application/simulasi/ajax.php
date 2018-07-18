
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
    1 => 'kode_caleg',
    2 => 'nama_caleg',
    3 => 'nama_partai',
    4 => 'suara_caleg',
    5 => 'persentase_caleg'
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
        
//        $sqltot = " ";
//        
//        $sqlSearch = $sqltot;
//        $sqltot .= " group by kode_caleg, nama_caleg, nama_partai";                
//
//        
        echo $sqltot = "CALL SpDataSimulasiCaleg('$dapil','$kode_caleg','$partai')";
        $sql = $sqltot;
//        $qtot = mysqli_query($this->conn, $sqltot) or die("error fetch data: ");
//        $totalData = mysqli_num_rows($qtot);
        $totalFiltered = $totalData = 0;

        if (!empty($req['search']['value'])) {
            
            $sql = $sqlSearch;

            $sql .= " WHERE kode_caleg LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= " OR nama_caleg LIKE '%" . $req['search']['value'] . "%'";
            $sql .= " OR nama_partai LIKE '%" . $req['search']['value'] . "%' ";
            $sql .= " group by kode_caleg, nama_caleg, nama_partai;";
            $sql .= " drop TEMPORARY TABLE SuaraCaleg;
                      drop TEMPORARY TABLE SuaraCalegSimulasi1;";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
            $totalFiltered = mysqli_num_rows($query);
           
            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " " .
                    $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ," . $req['length'] . " ";
            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        } else {     

//            $sql .=" ORDER BY " . $col[$req['order'][0]['column']] . " 
//              " . $req['order'][0]['dir'] . " LIMIT " . $req['start'] . " ,
//              " . $req['length'] . " ";

            $query = mysqli_query($this->conn, $sql) or die("ajax-grid-data.php: get PO");
        }

        $user = new User();

        $a = 0;
        while ($row = mysqli_fetch_assoc($query)) {
            $nestedData = [];

            $nestedData[] = $a;
            $nestedData[] = $row['kode_caleg'];
            $nestedData[] = $row['nama_caleg'];
            $nestedData[] = $row['nama_partai'];
            $nestedData[] = '<div align="right">'.number_format($row['suara_caleg']).'</div>';
            $nestedData[] = '<div align="right">'.$row['persentase_caleg'].'</div>';

            $data[] = $nestedData;
            $totalFiltered = $totalData = $a = $a + 1;
        }


        if ($totalData > 0) {
            $json_data = array(
                "draw" => 1,
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