<?php
session_start();
date_default_timezone_set('Europe/Moscow');
$login=$_POST['login'];
$password=md5($_POST['pass']);
$pdo = new PDO('mysql:host=localhost;dbname=Vedita','root','');
$query="select id, login, password, role from users where login='$login' and password='$password'";
$cat=$pdo->query($query);
$cat=$cat->fetch();

if(empty($cat))
{
    print_r($cat);
    echo"Ошибка логина или пароля";
}
else
{
    $id=$cat['id'];
    $_SESSION['usr_id']=$id;
    $role=$cat['role'];
    $data=date("Y-m-d H:i:s");
    $query="update users set last_login='$data' where id='$id'"; 
    $pdo->query($query);
    if($role==0)
    {
        echo "main";
    }
    if($role==1)
    {
        echo "admin";
    }
}
?>