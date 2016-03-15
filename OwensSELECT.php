<?php
error_reporting(E_ALL^E_DEPRECATED);
$con = mysql_connect("localhost","root"); //connecting to the database
if (!$con)
  {
  die('Could not connect: ' . mysql_error()); //if connection is unsuccessful it give a message 'could not connect'
  }

mysql_select_db("test", $con); //tells which database that you want to work with

$result = mysql_query("SELECT * FROM emp"); //getting information from emp table

echo "<table border='1'>  
<tr> 
<th>EMPNO</th>
<th>ENAME </th>
<th>JOB </th>
<th>MGR</th>
<th>HIREDATE </th>
<th>SAL </th>
<th>COMM </th>
<th>DEPTNO </th>
</tr>";

while($row = mysql_fetch_array($result)) //this creates a loop 
  {
  echo "<tr>";
  echo "<td>" . $row['EMPNO'] . "</td>";
  echo "<td>" . $row['ENAME'] . "</td>";
  echo "<td>" . $row['JOB'] . "</td>";
   echo "<td>" . $row['MGR'] . "</td>";
   echo "<td>" . $row['HIREDATE'] . "</td>";
  echo "<td>" . $row['SAL'] . "</td>";
  echo "<td>" . $row['COMM'] . "</td>";
   echo "<td>" . $row['DEPTNO'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

mysql_close($con); //closing connection
?> 