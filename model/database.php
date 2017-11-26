<?php
    
    $username = 'at358';
    $password = 'rhkGR7VNK';
    $hostname = 'sql1.njit.edu';
    $dsn = "mysql:host=$hostname;dbname=$username";

    try {
	$conn = new PDO($dsn, $username, $password);
    	echo "Connected successfully<br>";
	} 
        
    catch(PDOException $e) {
    	$error_message = $e->getMessage();
        include('../errors/database_error.php');
        exit();
	}
	
       
    }
?>
