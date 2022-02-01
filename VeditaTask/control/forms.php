<?php
date_default_timezone_set('Europe/Moscow');

if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') //проверка на асинхронность
{
    $login=$_POST['login'];
    $password=$_POST['pass'];
    $role=$_POST['roles'];
    if(empty($login) or empty($password))
    {
        echo "Логин и пароль не должен быть пустыми";
    }
    else
    {   
        if(empty($role))
        {
            echo "Роль не выбрана";
        }
        else
        {
            switch($role)
            {
                case "admin": $role=1; break;
                case "user": $role=0; break;
            }
            $password=md5($password);
            $last_login=date("Y-m-d H:i:s");
            $promt="insert into users (login, password, role, last_login) value ('$login', '$password', $role, '$last_login')";
            $pdo = new PDO('mysql:host=localhost;dbname=Vedita','root','');
            $pdo->query($promt);
            echo "Запись добавлена";
        }
    }
}

?>


