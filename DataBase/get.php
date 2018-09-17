<?php
include "connect1.php";


?>

<!DOCTYPE html>
<html>
<head>
	<title>task</title>
	     <link rel="icon" href="ss3.gif" type="image/gif">
	 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<style >
		.bod
		{
			background-color: gray;
		}
	</style>
</head>
<body class="bod">
	
	<div class="page-header" align="center">
		<h1>Enter parameter</h1>
	</div>
<form action="last.php" method="POST">
	
<div class="form-group row">

	<div class="col-sm-4"></div>
	<input type="text" name="name" class="form-control col-sm-4" placeholder="1st arrgument">
	<div class="col-sm-4"></div>
</div>
<div class="form-group row">
	<div class="col-sm-4"></div>
	<input type="text" name="code" class="form-control col-sm-4" placeholder="2nd argument">
	<div class="col-sm-4"></div>
</div>

<div class="form-group row">
	<div class="col-sm-7"></div>
	<input type="submit" value="enter" class="col-sm-1" >
	<div class="col-sm-4"></div>
</div>
</form>
</body>
</html>