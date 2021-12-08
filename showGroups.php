<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Таблиця Аккаунт продавця</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1><p style="color:#00ff00">Таблиця Аккаунт продавця</p></h1>


    <?php

    include_once('db.php');

    $sql = "SELECT * FROM account_prodavcy";


    if($result = $mysqli->query($sql))
    {   
        printf("Список : <br><br>");   
        printf("<table><tr><th>ІД</th><th>логін</th><th>наявний товар</th><th>рейтинг</th></tr>");
        while( $row = $result->fetch_assoc() )
        {
            printf("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>", $row['id_pr'], $row['login'], $row['nayavniy_tovar'], $row['reiting']);
        };
        printf("</table>");
        $result->close();
    };
    $mysqli->close();
    ?>
    <br><br><br>

    <ul>
        <li><a href="index.html"><p style="color:#CB4335">На головну</p></a><br></li>
    </ul>
    
</body>
</html>
