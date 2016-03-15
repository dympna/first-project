
<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("test", $con); //tells which database that you want to work with

$sql="INSERT INTO DEPT (DEPTNO, DNAME, LOC)
VALUES
('$_POST[DEPTNO]','$_POST[DNAME]','$_POST[LOC]')";

if (!mysql_query($sql,$con)) //this executes all the code above for the sql statement
  {
  die('Error: ' . mysql_error());
  }
echo "Thank you for entering information needed";

mysql_close($con); //closing connection to database
?> 
