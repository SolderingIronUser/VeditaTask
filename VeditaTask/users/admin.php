<?php
session_start();
if(!empty($_SESSION['usr_id']))
{
    //echo $_SESSION['usr_id'];
?>
<head>                                               
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="../script.js"></script>
</head>
<form id="forms">
    <label id="log">Логин: </label>
     <input name="login" id="login" placeholder="name@emal.ru" >
        <br>
    <label id="pas">Пароль: </label>
     <input name="pass" id="pass" type="password" placeholder="password">
        <br>
<label for="sordet">Выбор роли: </label>
<select name="roles" id="roles">


<?php
$pdo = new PDO('mysql:host=localhost;dbname=Vedita','root','');
$query="select name, code from roles";
$cat=($pdo->query($query))->fetchAll(); //забираем роли изи бд
foreach($cat as $value)
{
    $name=$value["name"];
    $code=$value["code"];
    echo"<option value='$name'>$code</option>"; 
}
?>


<input type="submit" value="Добавить">
</form>
<div id="result"></div> 

<?php
}
else
{
    header("Location: ../index.php");
}
?>