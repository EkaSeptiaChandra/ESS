<?php
//start session user simulation
session_start();
require_once 'config/class.php';

$db = new dbObj();
$connString = $db->getConstring();

$main = new Main();
include 'model/main.php';