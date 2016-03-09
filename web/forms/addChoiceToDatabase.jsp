<%@page import="org.jasypt.util.text.BasicTextEncryptor"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
        Statement s = conn.createStatement();

        s.execute("insert into choice (choice_title,choice_desc,poll_id) values('"+request.getParameter("title")+"','"+request.getParameter("description")+"',0   )");
        out.print("success");      
   %>
    
