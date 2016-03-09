package org.apache.jsp.account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.sql.Statement;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import org.jasypt.util.text.BasicTextEncryptor;

public final class verifyLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


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

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
