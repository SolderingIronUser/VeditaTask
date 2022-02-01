<?php session_start();?>
<form id="enter">
    <label >Логин: </label>
    <input name="login" id="login" placeholder="name@emal.ru" required>
        <br>
    <label >Пароль: </label>
    <input name="pass" id="pass" type="password", placeholder="password" required>
        <br>
    <input type="submit" name="enter" value="Авторизация">
</form>
<div id="request"></div>

<head>                                               
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="script.js"></script>
</head>

