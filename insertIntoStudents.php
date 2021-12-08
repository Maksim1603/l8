<?php

include_once('db.php');


$login = $_POST['login']; $password = $_POST['password']; $balans = $_POST['balans'];

$sql = "INSERT INTO account_pokypcy (login, password, balans) VALUES ('$login', '$password' , '$balans')";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }


include_once("showStudents.php");

?>
