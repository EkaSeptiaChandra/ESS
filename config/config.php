<?php
class dbObj {

    var $DB_Host = "localhost"; //koneksi localhost
    //var $DB_Host = "192.168.0.128"; //koneksi server
    var $DB_Name = "dbess"; //nama database
    var $DB_User = "root"; //user database
    var $DB_Pass = ""; //password database
    var $conn;

    function getConstring() {
        $con = mysqli_connect($this->DB_Host, $this->DB_User, $this->DB_Pass, $this->DB_Name) or
                die("Connection failed: " . mysqli_connect_error());

        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        } else {
            $this->conn = $con;
        }

        return $this->conn;
    }

}
?>