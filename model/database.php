<?php
    $dsn = 'mysql:host=localhost;dbname=my_guitar_shop1';
    $username = 'at358';
    $password = 'rhkGR7VNK';

    try {<?php
			$username = 'at358';
			$password = 'Krishna15';
			$hostname = 'sql1.njit.edu';
			$dsn = "mysql:host=$hostname;dbname=$username";
	} 
        catch(PDOException $e) {
    	echo "Connection failed: " . $e->getMessage();
	$conn = null;
	}
	
	?>
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('../errors/database_error.php');
        exit();
    }
?>
