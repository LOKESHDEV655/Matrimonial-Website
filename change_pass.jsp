<%-- 
    Document   : change_pass
    Created on : Aug 3, 2021, 11:46:21 AM
    Author     : lokes
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
    Cookie c[] = request.getCookies();
    String email = null;
    for(int i=0; i<c.length; i++){
        if(c[i].getName().equals("login")){
            email = c[i].getValue();                
            break;
        }
    }        
        
    if(email != null && session.getAttribute(email) != null){
        if(request.getParameter("cp").trim().length()==0 || request.getParameter("np").trim().length()==0 || request.getParameter("rp").trim().length()==0){
            response.sendRedirect("changepass.jsp?empty=1");
        }
        else{
            String cp = request.getParameter("cp");
            String np = request.getParameter("np");
            String rp = request.getParameter("rp");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                Statement st = cn.createStatement();
                
                ResultSet rs = st.executeQuery("select * from jeevansathi where email='"+email+"'");
                
                if(rs.next()){
                    if(rs.getString("password").equals(cp)){
                        if(np.equals(rp)){
                           st.execute("update jeevansathi set password='"+np+"' where email='"+email+"'");
                           response.sendRedirect("profile.jsp?success=1");
                        }
                        else{
                           response.sendRedirect("changepass.jsp?mismatch=1"); 
                        }
                    }
                    else{
                        response.sendRedirect("changepass.jsp?invalid_pass=1");
                    }
                }
                else{
                    response.sendRedirect("profile.jsp?invalid_id=1");
                }         
            
            }
            catch(Exception e){
            
            }
        }
    }
    else{
        response.sendRedirect("login.jsp?session=1");
    }
%>