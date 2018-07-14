<?php
require_once '../config/config.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "provinsi";
$kode_user = "001";

$optionClass = new Option($connString);
$optionClass->getOption($params, $kode_user);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $kode_user) {
        $json_data = [];
        $sql = "CALL SpProvinsi('$kode_user')";
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}