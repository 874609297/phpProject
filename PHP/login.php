<?php
    require_once 'toSQL.php';
    if(isset($_GET['uid'])){
        $uid=$_GET['uid'];
        $pwd=$_GET['pwd'];
        // $suid=$_SESSION['uid'];
        // $spwd=$_SESSION['pwd'];
        $sql="select * from users where uname ='{$uid}' and upwd = '{$pwd}'";
        if($res=mysqli_query($link,$sql)){
            $row=mysqli_num_rows($res);
            if($row>0){
                echo json_encode(1);
            }else{
                echo json_encode(2);
            }
        }else{
            echo json_encode(1);
        }
    }else{
        echo "cuo";
    }
    
?>