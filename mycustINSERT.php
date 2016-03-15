<?php
$lname=$_POST["lName"]; 
$fname=$_POST["fname"];
$addressL1=$_POST["addressL1"];
$area=$_POST["area"]; 
$town=$_POST["town"];
$county=$_POST["county"];
$branch_id=$_POST["branch_id"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$custStatus=$_POST["custStatus"];
$sdate=$_POST["sdate"];
$job=$_POST["job"];
$companyName=$_POST["companyName"];
$maritalStatus=$_POST["maritalStatus"];
$loanAccType=$_POST["loanAccType"];
$currAccType=$_POST["currAccType"];


$con = mysql_connect("localhost","root","");//connecting to the db
if (!$con)
  {
  die('Could not connect: ' . mysql_error());//If connection is unsuccessful it gives a message 'could not connect'
  }

mysql_select_db("poibbank1", $con);

$sql = "INSERT INTO customers (lName, fname, addressL1, area, town, county, branch_id, phone, email, 
        custStatus, sdate, job, companyName, maritalStatus, loanAcctype,currAccType)
       VALUES('$lname','$fname','$addressL1','$area', '$town','$county','$branch_id','$phone','$email',
       '$custStatus', '$sdate', '$job', '$companyName', '$maritalStatus', '$loanAccType', '$currAccType')";

if($sql === FALSE){
	die(mysql_error());
} 


if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
echo "1 record added";

mysql_close($con);   


//this file(not form)will be called after I hit submit on the form 

?> 
<br><br>
<input type="button" onClick="parent.location='customers.php'">