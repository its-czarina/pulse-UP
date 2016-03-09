

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
            Statement s = conn.createStatement();
            
            try{
                ResultSet ID = s.executeQuery("Select * from userinfo where s_number = '"+request.getParameter("snumber")+"'");
                if (ID.next()){
                    
                    out.print("0");
                } 
                else{
                    out.print("1");
                }
               
            }
            catch(Exception e){
               
            }
        %>
    