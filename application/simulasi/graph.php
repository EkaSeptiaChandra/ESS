<?php
require_once '../../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$kode_caleg = $_GET['caleg'];
$dapil = $_GET['dapil'];
$partai = $_GET['partai'];

$optionClass = new Option($connString);
$optionClass->getOption($dapil, $kode_caleg, $partai);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($dapil, $kode_caleg, $partai) {
        $sc = [];
        
        $query = "CAll SpGrafikSimulasi('$dapil','$kode_caleg','$partai')";
        $result = mysqli_query($this->conn, $query);
        
        foreach ($result as $a) {
            $sc[] = $a;
        }                
        
        print json_encode($sc);        
    }
}