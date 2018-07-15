<?php
require_once '../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$dapil = $_GET['dapil'];
$optionClass = new Option($connString);
$optionClass->getOption($dapil);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($dapil) {
        $json_data = [];
        
        $sql = "CAll SpPersentaseSuaraPartai('$dapil')";
        $result = mysqli_query($this->conn, $sql);
        
        foreach ($result as $row) {
            $json_data[] = $row;
        }              
        
        print json_encode($json_data);
    }
}