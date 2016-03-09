

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
                ResultSet result = s.executeQuery("select choice_title, choice_desc from choice where poll_id =4" );
                
                String choiceTitle;
                String choiceDescription;
                while (result.next()){
                    
                    choiceTitle = result.getString("choice_title");
                    choiceDescription = result.getString("choice_desc");
                    
                    ret += ("Choice: <t>" + "<input type=\"text\" value=\"" + choiceTitle + "\"></br>Description:<input type=\"text\" value=\"" + choiceDescription 
                    + "\"></br>");
                    
                }
            }
            catch(Exception e){
               
            }
            out.print(ret);
        %>
        