<?php
	$conn = new mysqli('localhost', 'root', '', 'nebatech_votepro_db');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>