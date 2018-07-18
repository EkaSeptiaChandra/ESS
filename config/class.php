<?php
class dbObj {

    //var $DB_Host = "localhost"; //koneksi localhost
    var $DB_Host = "192.168.1.7"; //koneksi server
    var $DB_Name = "dbess"; //nama database
    var $DB_User = "ess"; //user database
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

}//end class DB Object

class Main {

    function get_page() {
        if (!isset($_GET['page'])) {
            include_once 'view/home.php';
        } else {
            $pages = htmlentities($_GET['page']);
            $page_root = "view/" . $pages . ".php";

            if (file_exists($page_root)) {
                include_once $page_root;
            } elseif ($_GET['page'] == "ulogin") {
                header("location: model/login/");
            } elseif ($_GET['page'] == "logout") {
                $db = new dbObj();
                $connString = $db->getConstring();
                $user = new User($connString);
                $user->logout();
            } else {
                include_once 'model/404.php';
            }
        }
    }

    function get_head() {
        include_once 'model/head.php';
    }

    function get_topbar() {
        include_once 'model/topbar.php';
    }

    function get_menu() {
        include_once 'model/menu.php';
    }

    function get_login_page() {
        include_once 'model/login.php';
    }

    function getActScript() {
        if (isset($_GET['page'])) {
            $page = htmlentities($_GET['page']);
            $actRoot = "application/" . $page . "/script.js";

            echo '<script src="' . $actRoot . '"></script>';
        } else {
            $page = "home";
            $actRoot = "application/" . $page . "/script.js";

            echo '<script src="' . $actRoot . '"></script>';
        }
    }

}//end class main

class User {

    protected $conn;
    protected $data = [];

    public function linkAct($id) {

        return '
        <div class="text-center">
        <a href="#" id="' . $id . '" class="act_btn text-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit" title="Edit">
        <i class="fa fa-edit fa-fw"></i>                                    
        </a>
        <a href="#" id="' . $id . '" class="act_btn text-danger" data-toggle="tooltip" data-placement="top" data-original-title="Delete" title="Delete">
        <i class="fa fa-trash-o fa-fw"></i>                                    
        </a>
        </div>';
    }

    public function editAct($id) {
        return '
        <div class="text-center">
        <a href="#" id="' . $id . '" class="act_btn text-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit" title="Edit">
        <i class="fa fa-edit fa-fw"></i>
        </a>        
        </div>';
    }
    
    public function radioAct($id) {
        return '
        <div align="center">
        <input type="radio" name="rd" id="'.$id.'" value="'.$id.'" class="act_btn" data-original-title="Pilih" title="Pilih">                
        </div>';
    }

    function logout() {
        session_destroy();
        echo '<meta http-equiv="refresh" content="0;url=index.php" >';
    }

}//end class user