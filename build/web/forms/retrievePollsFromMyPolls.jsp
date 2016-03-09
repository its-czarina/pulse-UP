

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
            Statement s = conn.createStatement();
            String ret = "";
            try{
                ResultSet result = s.executeQuery("select poll_question, poll_desc from poll where admin_id = '4'" );
                
                String pollQuestion;
                String pollDescription;
                while (result.next()){
                    
                    pollQuestion = result.getString("poll_question");
                    pollDescription = result.getString("poll_desc");
                    
                    ret += ("Title:<t>" + "<input type=\"text\" value=\"" + pollQuestion + "\"></br>Description:<input type=\"text\" value=\"" + pollDescription 
                    + "\"></br>");
                    
                }
            }
            catch(Exception e){
               
            }
            out.print(ret);
        %>
        