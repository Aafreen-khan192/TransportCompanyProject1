<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="dao.CustomerDao"%>
<%@page  session="true" %>
<html>
    <body>
<% 
    String user=null,pass=null;
    user=request.getParameter("txtName");
    pass=request.getParameter("txtPassword");
   
 if(user!=null && pass!=null)
    {
        CustomerDao sd= new  CustomerDao();
         if(sd.checkLogin(user, pass))
      
   {
             response.sendRedirect("home.html");
           
  session.setAttribute("user", user);
             session.setAttribute("pass", pass);
         }  

         else
             out.println("<font color=red size=4>invalid user name or password</font>");
                 
         
                 
   
 }    
%>
</body>
</html>
