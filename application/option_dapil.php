<?php
require_once '../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
//$tb_name = "dapil";
$kode_provinsi = $_GET['KodeProv'];

$optionClass = new Option($connString);
$optionClass->getOption($params, $kode_provinsi);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $kode_provinsi) {
        $json_data = [];
        $sql = "call SpDapil('$kode_provinsi')";
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        echo json_encode($json_data);
    }
}