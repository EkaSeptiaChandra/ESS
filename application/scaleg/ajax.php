<?php
  require '../../config/class.php';
  require '../DataSuara.php';

  $dapil = $_GET['dapil'];

  $db = new dbObj();
  $connString = $db->getConstring();
  $dataSuara = new DataSuara($connString);
  $data = $dataSuara->getDataCaleg($dapil);
  $dataE['data'] = $data;
  $jData = json_encode($dataE);
  echo $jData;
?>