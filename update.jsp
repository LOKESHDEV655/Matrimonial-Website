<%-- 
    Document   : update
    Created on : Aug 3, 2021, 12:22:07 AM
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
        if(email==null && session.getAttribute(email)==null){
          response.sendRedirect("login.jsp");
        }
        else{
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
               
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String dob = request.getParameter("dob");
                String gender = request.getParameter("gender");
                String height = request.getParameter("height");
                String mstatus = request.getParameter("mstatus");
                String mtongue = request.getParameter("mtongue");
                String caste = request.getParameter("caste");
                String religion = request.getParameter("religion");
                String city = request.getParameter("city");
                String state = request.getParameter("state");        
                String occupation = request.getParameter("occupation");
                String mob = request.getParameter("mob");
                
                PreparedStatement ps = cn.prepareStatement("update jeevansathi set fname=?,lname=?,dob=?,gender=?,height=?,mstatus=?,mtongue=?,caste=?,religion=?,city=?,state=?,occupation=?,mob=? where email=?");
                ps.setString(1,fname);
                ps.setString(2,lname);
                ps.setString(3,dob);
                ps.setString(4,gender);
                ps.setString(5,height);
                ps.setString(6,mstatus);
                ps.setString(7,mtongue);
                ps.setString(8,caste);
                ps.setString(9,religion);                
                ps.setString(10,city);
                ps.setString(11,state);
                ps.setString(12,occupation);
                ps.setString(13,mob);
                ps.setString(14,email); 
                
                if(ps.executeUpdate()>0){
                    response.sendRedirect("profile.jsp?success=1");
                }
                else{
                    response.sendRedirect("edit_profile.jsp?again=1");
                }
            }
            catch(Exception e){
                out.print(e.getMessage());
            }       
        }    

%>