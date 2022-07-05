<%-- 
    Document   : switch_logout
    Created on : Aug 2, 2021, 5:16:49 PM
    Author     : lokes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    String email = null;
    Cookie c = new Cookie("login",email);
    c.setMaxAge(0);
    response.addCookie(c);
    response.sendRedirect("login.jsp");

%>