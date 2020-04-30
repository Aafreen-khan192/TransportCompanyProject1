
<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="dao.CustomerDao"%>
<%@page import="java.util.Date"%>


<%! 
  List<Customer> mylist;
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>JSP Page</title>
    </head>
   <body style="background-image:url(images/j2.jpg);background-repeat: no-repeat;background-size:cover">
        <center>
     <% 
           
        CustomerDao sd=new  CustomerDao();
           mylist=sd.searchAll();
    %>   
     <table border="1" >  
    
          <tr bgcolor="green">
             <th>ID</th><th>Name</th><th>Address</th><th>Email</th><th>Route</th><th>Mobile</th><th>Date</th><th>Vehicle Type</th></tr>     

          <h2><font color="green">Record of All User who Login for Transportation</font><h2>
       <% 
                for(Customer S:mylist)
                {
               %>
               <tr>
              
     <td><%=S.getId()%></td>  
                   <td><%=S.getName()%></td>  
                   <td><%=S.getAdd()%></td>  
 
                  <td><%=S.getEmail()%></td>  
                   <td><%=S.getRoute()%></td>  
                   <td><%=S.getMobile()%></td>
                    <td><%=S.getDate()%></td>
                    <td><%=S.getVehicle()%></td>
               </tr>  
     
          <%
                } 
              %>              
              
   </table>              
    </center>
    </body>
</html>


