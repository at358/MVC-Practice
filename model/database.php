<?php
class Database {
	private static $username = 'at358';
	private static $password = 'Krishna15';
	private static $hostname = 'sql1.njit.edu';
	private static $dsn = "mysql:host=$hostname;dbname=$username";
	
	private function _construct() {}
		
	public static function getDB() {
		if(!isset(self::$db)) {
			try {
			self::$db = new PDO(self::$dsn, self::$username, self::$password);
    			
			} catch(PDOException $e) {
    				$error_message = $e->getMessage();
				include('../errors/database_error.php');
				exit();
			}
		}
		return self::$db;
	}
}
?>
