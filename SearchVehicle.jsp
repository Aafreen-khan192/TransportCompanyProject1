
<%@page import="java.util.List"%>
<%@page import="model.Vehicle"%>
<%@page import="dao.CustomerDao"%>
<%@page import="java.util.Date"%>


<%! 
  List<Vehicle> mylist;
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>JSP view</title>
    </head>
   
<body style="background-image:url(images/j2.jpg);background-repeat: no-repeat;background-size:cover">
        <center>

     <% 
           
        CustomerDao sd=new  CustomerDao();
           mylist=sd.searchVehicle();
    %>   
     <table border="1" >  
    
          <tr bgcolor="blue"><th>Vehicle Type</th><th>Vehicle Number</th><th>Driver</th><th>Conductor</th><th>Route</th><th>Shift</th><th>Price</th></tr>     

          <h1><font color="blue"> vehicle detail..</font><h1>
       <% 
                for(Vehicle S:mylist)
                {
               %>
               <tr>
              
     <td><%=S.getType()%></td>  
                   <td><%=S.getNumber()%></td>  
                   <td><%=S.getDriver()%></td>  
 
                  <td><%=S.getConductor()%></td>  
                   <td><%=S.getRoute()%></td>
                    <td><%=S.getShift()%></td>
                    <td><%=S.getPrice()%></td>
               </tr>  
     
          <%
                } 
              %>              
              
   </table>              
    </center>
    </body>
</html>


