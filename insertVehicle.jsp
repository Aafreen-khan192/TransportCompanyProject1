<html>
<head> 
<title>Form</title>
 <script language="javascript">
            function display()
            { 
              
                 alert("Record inserted succesfully..");
           
   
              }
        </script>   
</head>
<body bgcolor="pink">
<center>
    <h6><center><font size=8 color=blue>Add Vehicle detail...</font></center>
</h6>
    <table><center><form><font color="blue">
<tr>
<th>Vehicle Type</th>
<td><input type=text name=txttype></td></tr><tr></tr><tr></tr>
<tr>
<th>Vehicle Number</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr>
<th>Driver</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr>
<th>Conductor</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr>
<th>Route</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr>
<th>Shift</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr>
<th>Price</th>
<td><input type=text name=txtname></td></tr><tr></tr><tr></tr>
<tr><tr></tr><tr></tr><td></td>
    <td>
        <button type=submit onclick="display();" formaction="insertdata2.jsp" > Save</button>

        <input type=submit value=Exit formaction="home.html"></td></tr>
    
            </table></font></center></form>
            </body></html>
    
    