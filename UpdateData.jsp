
<%@page import="dao.CustomerDao"%>

<jsp:useBean class="model.Customer" id="C">
    <jsp:setProperty property="*" name="C"></jsp:setProperty>
</jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <% 
          
         CustomerDao sd=new CustomerDao();
            if(sd.updateCustomer(C))
              out.println("<font color=green size=7>Record Updated......</font>");
        %>  
    </body>
</html>
