<!doctype html>
<html lang="en">
<style>
</style>
<head>
	<meta charset="utf-8"/>
	<title>viewSelect</title>
	<link rel="Stylesheet" type="text/css" href="PBOI2.css">

	
</head>
<body>
	<header>
	<h1>Professional Bank of Ireland</h1>
	</header>
	<nav>
		<ul>
			<li><a href="bankhome2.html">Home</a>
			<li><a href="PBOIpage2.html">Customers</a></li>
			<li><a href="PBOIpage3.html">Loans</a></li>
			<li><a href="PBOIpage4.html">Accounts</a></li>
			<li><a href="PBOIpage5.html">Personnel</a></li>
		</ul>
	</nav>
	<section>
	Check your inserted record.  Scroll down to the last entry on the table. Also scroll across page. Return to main menu navigation bar.
	
	</section>
	<section>
<blockquote>
<table border=1 cellpadding=1>
<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("poibbank1", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM customers"); //getting information from specified table

echo "<table border='1'>  
<tr> 
<th>cust_id</th>
<th>lName</th>
<th>fname</th>
<th>addressL1</th>
<th>area</th>
<th>town </th>
<th>county </th>
<th>branch_id </th>
<th>phone</th>
<th>email</th>
<th>custStatus</th>
<th>sdate </th>
<th>job </th>
<th>companyName </th>
<th>maritalStatus </th>
<th>loanAccType </th>
<th>CurrAccType </th>
</tr>";
//
while($row = mysql_fetch_array($result)) //this creates a loop 
  {
	echo "<tr>";
	echo "<td>" . $row['cust_id'] . "</td>";
	echo "<td>" . $row['lName'] . "</td>";
	echo "<td>" . $row['fname'] . "</td>";
	echo "<td>" . $row['addressL1'] . "</td>";
	echo "<td>" . $row['area'] . "</td>";
	echo "<td>" . $row['town'] . "</td>";
	echo "<td>" . $row['county'] . "</td>";
	echo "<td>" . $row['branch_id'] . "</td>";
	echo "<td>" . $row['phone'] . "</td>";
	echo "<td>" . $row['email'] . "</td>";
	echo "<td>" . $row['custStatus'] . "</td>";
	echo "<td>" . $row['sdate'] . "</td>";
	echo "<td>" . $row['job'] . "</td>";
	echo "<td>" . $row['companyName'] . "</td>";
	echo "<td>" . $row['maritalStatus'] . "</td>";
	echo "<td>" . $row['loanAccType'] . "</td>";
	echo "<td>" . $row['currAccType'] . "</td>";
	echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection//
?> 
</table>
</blockquote>
</section>
	
	
	<footer>
		Webmaster DMCN 2015
	</footer>
</body>
</html>