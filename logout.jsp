<%-- 
    Document   : logout
    Created on : Aug 3, 2021, 12:24:19 PM
    Author     : lokes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    Cookie c[] = request.getCookies();
    String email = null;
    for(int i=0; i<c.length; i++){
        if(c[i].getName().equals("login")){
            email = c[i].getValue();                
            break;
        }
    }
    
    if(email != null){
        session.removeAttribute(email);
    }
    response.sendRedirect("login.jsp");

%>