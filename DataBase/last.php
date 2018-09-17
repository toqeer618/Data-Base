<?php
include "connect1.php";

$a=$_POST['name'];
$b=$_POST['code'];
$con->query("call alpha2($b,$a");
$qry =$con->query("select$b");
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
	$result ='';
if ($qry->num_rows>0) {
		while ($row = $qry->fetch_assoc()) 
				{
					
				echo emplode($row);
			
				
			}
	}
	else
		$msg = "Error!";
//$result .= "<div class='col-sm-2'></div></div>";
		






	  ?>

</body>
</html>


