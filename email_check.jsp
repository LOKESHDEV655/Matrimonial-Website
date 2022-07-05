
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
    if(email == null){
        if(request.getParameter("email").trim().length()==0){
           response.sendRedirect("login.jsp?empty=1"); 
        }
        else{
            email = request.getParameter("email");
        }
    }    
    
    if(request.getParameter("pass").trim().length()==0){
        response.sendRedirect("login.jsp?empty=1");
    }
    else{        
        String pass = request.getParameter("pass");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery("select * from jeevansathi where email='"+email+"'");
                
                if(rs.next()){
                    if(rs.getString("password").equals(pass)){
                        Cookie ct = new Cookie("login",email);
                        ct.setMaxAge(3600);
                        response.addCookie(ct);
                        session.setAttribute(email,pass);
                        session.setMaxInactiveInterval(3600);
                        response.sendRedirect("profile.jsp");
                    }
                    else{
                        response.sendRedirect("login.jsp?invalid_pass=1");
                    }
                }
                else{
                    response.sendRedirect("login.jsp?invalid_id=1");
                }
            }
            catch(Exception e){
                out.print(e.getMessage());
            }
    }
%>