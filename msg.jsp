<%-- 
    Document   : msg
    Created on : Aug 5, 2021, 1:10:04 AM
    Author     : lokes
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
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
            if(request.getParameter("code").trim().length()==0 || request.getParameter("message").trim().length()==0){
                response.sendRedirect("view_profile.jsp?empty=1");                
            }
            else{
                String from_email = email;
                String to_email = "";
                String from_code = "";
                String to_code = request.getParameter("code");                

                int sn=0;      
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select MAX(sn) from inbox");

                    if(rs.next()){
                        sn = rs.getInt(1);
                    }
                    sn++;

                    String code ="";
                    LinkedList l = new LinkedList();

                    for(char i='A'; i<='Z'; i++){
                    l.add(String.valueOf(i));            
                    }

                    for(char i='a'; i<='z'; i++){
                        l.add(String.valueOf(i));
                    }

                    for(int i=0; i<=9; i++){
                        l.add(i);		
                    }

                    Collections.shuffle(l);       
                    for(int i=0; i<=5; i++){
                        code=code+l.get(i);
                    }
                    code = code+"_"+sn;

                    //getting from_code
                    ResultSet rd = st.executeQuery("select code from jeevansathi where email='"+email+"'");
                    if(rd.next()){
                        from_code = rd.getString(1);
                    }
                    //getting to_email
                    ResultSet rt = st.executeQuery("select email from jeevansathi where code='"+to_code+"'");
                    if(rt.next()){
                        to_email = rt.getString(1);
                    }
                    
                    String message = request.getParameter("message");
                    
                    java.util.Date d = new java.util.Date();
                    String dt = " "+d;
            
                    PreparedStatement ps = cn.prepareStatement("insert into inbox values(?,?,?,?,?,?,?,?)");
                    ps.setInt(1,sn);
                    ps.setString(2,code);
                    ps.setString(3,to_email);
                    ps.setString(4,to_code);
                    ps.setString(5,from_email);
                    ps.setString(6,from_code);
                    ps.setString(7,message);
                    ps.setString(8,dt);
                    
                    if(ps.executeUpdate()>0){
                        response.sendRedirect("view_profile.jsp?code="+to_code+"&success=1");
                    }
                    else{
                        response.sendRedirect("view_profile.jsp?again=1");    
                    }
                }
                catch(Exception e){
                    response.sendRedirect("view_profile.jsp");
                }
            }
        }
        else{
            response.sendRedirect("login.jsp?session=1");
        }
%>