<?php
require_once "toSQL.php";
if(isset($_GET['email'])){
    $email=$_GET['email'];
    $phone=$_GET['phone'];
    $pwd=$_GET['pwd'];
}
$sql1="select * from users where uname='$email'";
$sql2="insert into users (uname,phone,upwd) values ('$email','$phone','$pwd')";
if($res=mysqli_query($link,$sql1)){
    $rowcount=mysqli_num_rows($res);
    if($rowcount==0){
        if($ress=mysqli_query($link,$sql2)){
            echo "1";
        }else{
            echo "3";
        }
    }else{
        echo "2";
    }
}
?>