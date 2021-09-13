<?php
require_once 'toSQL.php';
$data=$_GET['data'];
$sql="select * from product where typeId='$data'";
if($res=mysqli_query($link,$sql)){
    $resarr=array();
    while($row=mysqli_fetch_assoc($res)){
        array_push($resarr,$row);
    }
    header('Content-Type:application/json');
    echo json_encode($resarr);
}
?>