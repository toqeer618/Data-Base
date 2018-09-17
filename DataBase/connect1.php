<?php
	//php code here
	$server = "localhost";
	$user = "root";
	$pass = "";
	$dbname = "sales_co";
	
	$con = new MySQLi($server, $user, $pass, $dbname);

	if ($con->connect_error) 
		echo "Error: ".$con->connect_error;
	else
		echo "Established";

?>