<?php
session_start();
if(!empty($_SESSION['usr_id']))
{
    //echo $_SESSION['usr_id'];
?>

<label>Добро пожаловать</label>
<form action="../control/deauth.php">
<input type="submit" name="exit" value="Выйти">
</form>

<?php
}
else
{
    header("Location: ../index.php");
}
?>