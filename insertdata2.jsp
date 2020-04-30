
<%@page import="dao.CustomerDao" %>
<jsp:useBean class="model.Vehicle" id="V">
  
  <jsp:setProperty property="*" name="V"></jsp:setProperty>  
</jsp:useBean>

<html>
   
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
      <title>JSP Page</title>
    </head>
    <body>
    <% 
     CustomerDao sd=new  CustomerDao();
       
  if(sd.insertVehicle(V)>0)
            response.sendRedirect("insertVehicle.jsp");
    %>
    </body>
</html>

