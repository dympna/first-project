<!doctype html>
<html lang="en">
<style>
</style>
<head>
	<meta charset="utf-8"/>
	<title>PBOIpage2php</title>
	<link rel="Stylesheet" type="text/css" href="PBOI2.css">
	
	<script>
	function checkforblank(){
		
		var errormessage ="";
		
		if(document.getElementById('lName').value==""){
			errormessage+= "enter your last name\n";
			 document.getElementById('lName').style.borderColor="red";
		
		}
		if(document.getElementById('fname').value==""){
			errormessage+= "enter your first name\n";
			 document.getElementById('fname').style.borderColor="red";
		}
		if(errormessage !=""){
			alert(errormessage);
			return false;
			 
		}
	}
		
	</script>
	
</head>
<body>
	<header>
	<h1>Professional Bank of Ireland</h1>
	</header>
	<nav>
		<ul>
			<li><a href="bankhome2.html">Home</a>
			<li><a href="PBOIpage2.php">Customers</a></li>
			<li><a href="PBOIpage3.html">Loans</a></li>
			<li><a href="PBOIpage4.html">Accounts</a></li>
			<li><a href="PBOIpage5.html">Personnel</a></li>
		</ul>
	</nav>
	
	<section>
	Insert information on Customers by filling out the form below. Please complete all fields.
	Click the submit button and return to main menu navigation bar.
	
	</section>


	<section>
	
<blockquote>
<table align=center border=1 cellpadding=3 width=50%>
		
		<form action="mycustINSERT.php" method="POST" onsubmit="return checkforblank()">
         
			<div class="field">
				<tr><th><label for="lName">Last Name:
				<td><input type="text" name="lName" id="lName"/></label></td>
				<td>e.g. Murphy</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="fname">First Name:
				<td><input type="text" name="fname" id="fname"/></label></td>
				<td>e.g. Tom</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="addressL1">Address:
				<td><input type="text" name="addressL1" id="addressL1"/></label></td>
				<td>e.g. 78 Ashgrove Ave</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="area">Area:
				<td><input type="text" name="area" id="area"/></label></td>
				<td>e.g. Salthill/none</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="town">Town:
				<td><input type="text" name="town" id="town"/></label></td>
				<td>e.g. Galway</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="town">County:
				<td><input type="text" name="county" id="county"/></label></td>
				<td>e.g Galway</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="town">BranchID:
				<td><input type="text" name="branch_id" id="branch_id"/></label></td>
				<td>e.g. 908652</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="phone">Tel:
				<td><input type="tel" name="phone" id="phone"/></label></td>
				<td>e.g. 091-783391</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="email">Email:
				<td><input type="text" name="email" id="email"/></label></td>
				<td>tmurphy@gmail.com</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="custStatus">Customer Status:
				<td><input type="text" name="custStatus" id="custStatus"/></label></td>
				<td>e.g.approved/rejected</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="sdate">Status Date:
				<td><input type="date" name="sdate" id="sdate"/></label></td>
				<td>e.g.2015-06-13</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="job">Job:
				<td><input type="text" name="job" id="job"/></label></td>
				<td>e.g. Taxi Driver</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="companyName">Company Name:
				<td><input type="text" name="companyName" id="companyName"/></label></td>
				<td>e.g. Big O</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="maritalStatus">Marital Status:
				<td><input type="text" name="maritalStatus" id="maritalStatus"/></label></td>
				<td>e.g.single/married/divorced</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="loanAccType">Loan Acc Type:
				<td><input type="text" name="loanAccType" id="loanAccType"/></label></td>
				<td>e.g.mortgage/car/personal</td></tr>
			</div>
			<div class="field">
				<tr><th><label for="currAccType">Curr Acc Type:
				<td><input type="text" name="currAccType" id="currAccType"/></label></td>
				<td>e.g. personal/business</td></tr>
			</div>
			
			
			<tr><td colspan=100%><input type="submit" value="Insert Record"></td><tr>
			
		</form>
</table>
</blockquote>
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

mysql_close($con); //closing connection
?> 
</table>
</blockquote>
</section>
	
	
	<footer>
		Webmaster DMCN 2015
	</footer>
</body>
</html>