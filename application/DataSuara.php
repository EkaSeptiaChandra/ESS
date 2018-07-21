<?php

  class DataSuara {

  protected $conn;
  protected $data = [];

  function __construct($connString){
    $this->conn = $connString;
  }

  public function getDataCaleg($dapil) {
    
    $data = array();
    $query = "call spDataCaleg(' ".$dapil." ')";
    $result = mysqli_query($this->conn, $query) or die("error fetch data: ");
    
    while ($row = mysqli_fetch_assoc($result)) {
      $data[] = array($row['kode_caleg'], $row['nama_caleg'], $row['nama_dapil'], $row['nama_partai'], $row['jumlah_suara'], $row['persentase_suara']);
    }    
    
    return $data;
  }

  public function getDataPartai($dapil) {
    $data = array();
    $query = "call spDataPartai(' ".$dapil." ')";
    $result = mysqli_query($this->conn, $query) or die("error fetch data: ");
    
    while ($row = mysqli_fetch_assoc($result)) {
      $data[] = array($row['kode_partai'], $row['nama_partai'], $row['nama_dapil'], $row['jumlah_suara'], $row['persentase_suara']);
    }    
    
    return $data;
  }

  
  }
  
?>