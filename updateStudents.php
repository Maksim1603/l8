<?php

include_once('db.php');



$id_p = $_POST['id_p'];
$login = $_POST['login'];
$password = $_POST['password'];
$balans = $_POST['balans'];

$sql = "UPDATE account_pokypcy SET id_p='$id_p', login='$login' , password='$password' , balans='$balans' WHERE id_p='$id_p' ";


if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }




include_once("showStudents.php");
?>
