<%@page import="org.jasypt.util.text.BasicTextEncryptor"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        BasicTextEncryptor textEncryptor = new BasicTextEncryptor();
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
        Statement s = conn.createStatement();

        textEncryptor.setPassword(request.getParameter("password"));
        
        s.execute("insert into credentials (username, password) values('"+request.getParameter("uname")+"','"+textEncryptor.encrypt(request.getParameter("password"))+"')");
        ResultSet rs=s.executeQuery("select last_insert_id()");
        rs.next();
        int lastInsertedId=rs.getInt(1);
        out.print("Account Saved");
        s.execute("insert into UserInfo (f_name, l_name, s_number,user_id) values('"+request.getParameter("fname")+"','"+request.getParameter("lname")+"','"+request.getParameter("snumber")+"','"+lastInsertedId+"')");
              
   %>
    