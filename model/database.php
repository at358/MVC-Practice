<?php
    $dsn = 'mysql:host=localhost;dbname=my_guitar_shop1';
    $username = 'at358';
    $password = 'rhkGR7VNK';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('../errors/database_error.php');
        exit();
    }
?>
