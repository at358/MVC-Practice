/*****************************************
* Create the my_guitar_shop1 database
*****************************************/

 <?php
			$username = 'at358';
			$password = 'Krishna15';
			$hostname = 'sql1.njit.edu';
			$dsn = "mysql:host=$hostname;dbname=$username";
	try {
	$conn = new PDO($dsn, $username, $password);
    	echo "Connected successfully<br>";
	$query = 'SELECT id, email FROM accountsWHERE id = :id;'
	$statement = $db->prepare($query);
	$statement->bindValue(':id', $accounts);
	$statement->execute();
	$accounts = $statement->fetchAll();
	$statement->closeCursor();
	<table = border="1">
        foreach ($accounts as account):
	<tr>
    	<td><?php echo $accounts['ID']; ?></td>
    	<td><?php echo $accounts['Email']; ?></td>
    	</tr>
	<?php endforeach; ?>

	<?php
	} catch(PDOException $e) {
    	echo "Connection failed: " . $e->getMessage();
	$conn = null;
	}
	
	?>

USE at358;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Guitars'),
(2, 'Basses'),
(3, 'Drums');

INSERT INTO products VALUES
(1, 1, 'strat', 'Fender Stratocaster', '699.00'),
(2, 1, 'les_paul', 'Gibson Les Paul', '1199.00'),
(3, 1, 'sg', 'Gibson SG', '2517.00'),
(4, 1, 'fg700s', 'Yamaha FG700S', '489.99'),
(5, 1, 'washburn', 'Washburn D10S', '299.00'),
(6, 1, 'rodriguez', 'Rodriguez Caballero 11', '415.00'),
(7, 2, 'precision', 'Fender Precision', '799.99'),
(8, 2, 'hofner', 'Hofner Icon', '499.99'),
(9, 3, 'ludwig', 'Ludwig 5-piece Drum Set with Cymbals', '699.99'),
(10, 3, 'tama', 'Tama 5-Piece Drum Set with Cymbals', '799.99');
