<?php
require_once 'toSQL.php';
if(isset($_GET['page'])){
		$page=$_GET['page'];
	}else{
		$page=1; //默认显示第一页
	}
	if(isset($GET['lastIndex'])){
		if($page==1){
			$page=1;
		}else{
			$page=$page-$GET['lastIndex'];
		}
	}
	$lastPage=$page-1;
	$nextPage=$page+1;
//每一页的显示个数
$pageSize=4;
//当前页下标
$offset=($page-1)*$pageSize;
$sql="select * from product";
if($result=mysqli_query($link,$sql)){
		$count=mysqli_num_rows($result);
		mysqli_free_result($result);
	}else{
		$count=0;
	}
	//总页码数
	$pageCount=ceil($count/$pageSize);//3
	$sql1="select * from product order by pid limit $offset,$pageSize";
	if($result=mysqli_query($link,$sql1)){
		$resultPaging=array();
		while($row=mysqli_fetch_assoc($result)){
			array_push($resultPaging,$row);
		}
		header('Content-Type:application/json');
		$response=array($pageCount);
		$pageIndex=array($page);
		array_push($resultPaging,$response);
		array_push($resultPaging,$page);
		echo json_encode($resultPaging);
	}else{
		echo"错";
	}
?>