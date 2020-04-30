
<%@page import="dao.CustomerDao" %>
<jsp:useBean class="model.Customer" id="S">
  
  <jsp:setProperty property="*" name="S"></jsp:setProperty>  
</jsp:useBean>

<html>
   
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
      <title>JSP Page</title>
    </head>
    <body>
    <% 
     CustomerDao sd=new  CustomerDao();
       
  if(sd.insertcustomer(S)>0)
             response.sendRedirect("insertdetail.jsp");
    %>
    </body>
</html>

