<?php
require_once '../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "provinsi";
$kode_user = '001';

$optionClass = new Option($connString);
$optionClass->getOption($params, $kode_user);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $kode_user) {
        $json_data = [];
        $sql = "SELECT distinct(p.kode_provinsi) as kode_provinsi, p.nama_provinsi ";
        $sql .= "FROM dapil d ";
        $sql .= "join dapil_user dp on dp.kode_dapil = d.kode_dapil ";
        $sql .= "join user_login ul on ul.kode_user = dp.kode_user ";
        $sql .= "join provinsi p on p.kode_provinsi = d.kode_provinsi ";
        $sql .= "WHERE ul.kode_user = '$kode_user' ";
        $sql .= "order by p.nama_provinsi asc ";
                
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}