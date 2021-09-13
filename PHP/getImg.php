<?php
require_once 'toSQL.php';
$sql="select * from product";
if($result=mysqli_query($link,$sql)){
	$resultArr=array();
	while($row=mysqli_fetch_assoc($result)){
		array_push($resultArr,$row);
	}
}else{
	exit;
}
	header('Content-Type:application/json');
	echo json_encode($resultArr);
?>