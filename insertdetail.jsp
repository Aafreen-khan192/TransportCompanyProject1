<%@page import="dao.CustomerDao"%>
<html>
<head><title>Table Application</title> 
<script language="javascript">
            function display()
            { 
              
                 alert("Record inserted succesfully..");
           
   
              }
        </script>   
</head>
<body bgcolor="#F08080">
<center>
   
   <h2>Inquiry Form....</h2>
<br><br>
<table border=1>
<form method=post action=insertdata.jsp>
<tr>
<th>ID</th>
<td><input type=text name=IdName placeholder="Enter ID" value="5061"></td>
</tr>
<tr>
<th>Name</th>
<td><input type=text name=txtName placeholder="Enter  Name" </td>
</tr>    
<tr>
<th>Address</th>
<td><textarea rows=5 cols=21 name=txtAddress></textarea></td>
</tr>
<tr>
<th>Email </th>
<td><input type=email name=txtEmail></td>
</tr>
<tr>
<th>Route</th>
<td>
<select name=txtCity>
<option>Indore to Bhopal</option>
<option>Indore to Mhow</option>
<option>Indore to Ujjain</option>
<option SELECTED>Indore to Dewas</option>
<option>Indore to satna</option>
<option>Indore to Pune</option>
</select>
</td>
</tr>

<th>Number</th>
<td>
<input type=number name=number1>
</td>
<tr>
<th>Date </th>
<td>
<input type=date name=dt1>
</td></tr>
<tr>
<th>Vehicle type</th>
<td><input type=text name=txtName  </td>
</tr>   
<tr>
<td></td>
<td>
    <button type=submit formaction="home.html" > Back</button>
    <input type=submit value=Submit onclick="display()";>
<input type=reset value=Reset>
</td>
</tr>
</form>
</table>
</center>
</body>