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
               
        $sqltot = "CALL SpHasilAnalisaCaleg('$dapil','$kode_caleg','$partai')";                
        $sql = $sqltot;
        
        $query = mysqli_query($this->conn, $sql) or die("die SP");
        //$qtot = mysqli_query($this->conn, $sqltot) or die("error fetch data: ");
        $totalData = mysqli_num_rows($query);
        $totalFiltered = $totalData;        
        

        $user = new User();
        
        while ($row = mysqli_fetch_assoc($query)) {            
            $nestedData = [];
            
            $nestedData[] = $row['kode_caleg'];
            $nestedData[] = $row['nama_caleg'];
            $nestedData[] = $row['nama_partai'];
            $nestedData[] = $row['nama_dapil'];
            $nestedData[] = '<div align="right">'.number_format($row['suara_caleg']).'</div>';
            $nestedData[] = '<div align="right">'.$row['persentase_caleg'].'</div>';
            $nestedData[] = '<div align="right">'.number_format($row['minimum_suara']).'</div>';
            $nestedData[] = '<div align="right">'.$row['minimum_persentase'].'</div>';

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
    
    function hitungTPS() {
        
    }   
}
