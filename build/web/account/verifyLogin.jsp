<%--     Document   : accountdetails
    Created on : Oct 21, 2015, 5:47:02 PM
    Author     : czarinarae
--%>

<%@ page import= "javax.mail.*" %>
<%@ page import= "javax.mail.internet.*"%>
<%@ page import = "javax.activation.*"%>
<%--
<%@page import="com.sun.xml.internal.ws.api.message.Packet.Status.Response"%>
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.jasypt.util.text.BasicTextEncryptor"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
    //out.print(request.getParameter("fname"));
    Statement s = conn.createStatement();
    //out.println(request.getParameter("username"));
    BasicTextEncryptor textEncryptor = new BasicTextEncryptor();

    try {
        String text = request.getParameter("password");
        textEncryptor.setPassword(text);
//                out.print(textEncryptor.decrypt("SsIple5mjP+qxAzmaKh5ow=="));
        ResultSet ID = s.executeQuery("select id, password from credentials where username='" + request.getParameter("uname") + "';");
        ID.next();
//                out.print("Hello");
        String st = ID.getString("password"); //encrypted daan
//                out.print(st);
        String pass = textEncryptor.decrypt(st);
        //out.println(pass);
//                ID.next();
        int userID = ID.getInt("id");
        //s.execute("insert into credentials (username, password) values('"+request.getParameter("uname")+"','"+request.getParameter("password")+"')");
        ResultSet rs = s.executeQuery("select f_name,l_name,s_number from userinfo where user_id=" + userID);
        rs.next();
//                response.sendRedirect("../index.jsp");
        out.print("1");
        //out.println("<div class=\"dead-center\">"+rs.getString("f_name")+"</div>");
        //out.println("<div class=\"dead-center\">"+rs.getString("l_name")+"</div>");
        //out.println("<div class=\"dead-center\">"+rs.getString("s_number")+"</div>");

        //ahjumma start
     
        //ahjumma end
    } catch (Exception e) {
        out.print("0");
        //out.print("<br/>");
        //out.print("<a href=\"../login.jsp\">Return</a>");
        //response.sendRedirect("../account/login.jsp?error=1");
    }
%>

