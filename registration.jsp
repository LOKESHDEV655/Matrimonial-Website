
<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("email").length()==0 || request.getParameter("pass").length()==0 || request.getParameter("fname").length()==0 || request.getParameter("lname").length()==0 || request.getParameter("gender").length()==0 || request.getParameter("dob").length()==0 || request.getParameter("height").length()==0 || request.getParameter("mstatus").length()==0 || request.getParameter("mtongue").length()==0 || request.getParameter("caste").length()==0 || request.getParameter("religion").length()==0 || request.getParameter("city").length()==0 || request.getParameter("state").length()==0 || request.getParameter("occupation").length()==0 || request.getParameter("mob").length()==0){
        response.sendRedirect("register.jsp?empty=1");
    }
    else{
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String height = request.getParameter("height");
        String mstatus = request.getParameter("mstatus");
        String mtongue = request.getParameter("mtongue");
        String caste = request.getParameter("caste");
        String religion = request.getParameter("religion");
        String city = request.getParameter("city");
        String state = request.getParameter("state");        
        String occupation = request.getParameter("occupation");
        String mob = request.getParameter("mob");
        
        int sn=0;        
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("select MAX(sn) from jeevansathi");
            
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
            
            PreparedStatement ps = cn.prepareStatement("insert into jeevansathi values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,email);
            ps.setString(2,pass);
            ps.setString(3,fname);
            ps.setString(4,lname);
            ps.setString(5,gender);
            ps.setString(6,dob);
            ps.setString(7,height);
            ps.setString(8,mstatus);
            ps.setString(9,mtongue);
            ps.setString(10,caste);
            ps.setString(11,religion);
            ps.setString(12,city);
            ps.setString(13,state);            
            ps.setString(14,occupation); 
            ps.setString(15,mob);
            ps.setInt(16,sn);
            ps.setString(17,code);

            if(ps.executeUpdate()>0){
                response.sendRedirect("pic_upload.jsp?code="+code);
            }
            else{
                response.sendRedirect("register.jsp?again=1");
            }   
        }
        catch(Exception e){
            out.print(e.getMessage());
        }
    }
%>