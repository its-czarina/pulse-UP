<%-- 
    Document   : getMyPolls
    Created on : Nov 2, 2015, 12:14:54 PM
    Author     : Deneir Uy
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup"
            , "root", "");
    Statement query = conn.createStatement();
    String respond = "";
    int userId = Integer.parseInt(request.getParameter("userId"));
    
    
    try{
        
        ResultSet polls = query.executeQuery("SELECT * FROM poll WHERE admin_id=" + userId + ";");

        int pollId;
        String pollQuestion;
        String pollDescription;

        while(polls.next()){

            pollId = polls.getInt("id");
            pollQuestion = polls.getString("poll_question");
            pollDescription = polls.getString("poll_desc");
            
            
            respond += ("<div><a href=../PulseUP1/faces/temp.jsp?pollId="+pollId+">" + pollQuestion + "</br>" + pollDescription 
                    + "</a></div></br>");
            
        }

    }
    catch(SQLException e){
        out.print("0");
    }

    out.print(respond);
%>