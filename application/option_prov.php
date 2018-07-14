<?php
require_once '../config/config.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "provinsi";

$optionClass = new Option($connString);
$optionClass->getOption($params, $tb_name);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $tb_name) {
        $json_data = [];
        $sql = "SELECT * FROM ".$tb_name;
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}