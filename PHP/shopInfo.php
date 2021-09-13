<?php
require_once 'toSQL.php';
if(isset($_GET['id'])){
    $shopid=$_GET['id'];
    $sql="select * from product where pid='$shopid'";
    if($res=mysqli_query($link,$sql)){
        $arrshop=array();
        while($row=mysqli_fetch_assoc($res)){
            array_push($arrshop,$row);
        }
        header('Content-Type:application/json');
        echo json_encode($arrshop);
    }else{
        echo mysqli_error($link);
    }
}else{
    echo json_encode("1");
}
?>