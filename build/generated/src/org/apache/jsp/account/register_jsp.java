package org.apache.jsp.account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>PulseUP Register</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../styles/global.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../styles/account.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../styles/header.css\"/>\n");
      out.write("        <script src=\"../scripts/credentialChecker.js\"></script>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\"#regsubmit\").click(function(){\n");
      out.write("                alert(\"Hello\" + $(\"#uname\").val());\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\"></div>\n");
      out.write("        <div id=\"reg-content\">\n");
      out.write("            <div id=\"regheader\">Registration Form</div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">First Name</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"text\" class=\"inputfield reginput\"/>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">Last Name</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"text\" class=\"inputfield reginput\"/>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">Student Number</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"text\" class=\"inputfield reginput\" id=\"snumber\" onchange=\"confirmStudentNumber()\"/>\n");
      out.write("                <div class=\"field-notif\"><div class=\"fnotif-text check\" id=\"snumber-error\"></div></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"field-hint\">e.g. 2013-48893</div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">Username</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"text\" class=\"inputfield reginput\" id=\"uname\" onchange=\"confirmUserName()\"/>\n");
      out.write("                <div class=\"field-notif\">\n");
      out.write("                    <div class=\"fnotif-text check\" id=\"username-error\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"field-hint\">Numbers and letters only please.</div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">Password</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"password\" class=\"inputfield reginput\" id=\"password\"  onchange=\"checkPassword()\"/>\n");
      out.write("                <div class=\"field-notif\">\n");
      out.write("                    <div class=\"fnotif-text error\" id=\"password-error\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"field-hint\">16 characters maximum</div>\n");
      out.write("            \n");
      out.write("            <div class=\"regfieldheader\">Confirm Password</div>\n");
      out.write("            <div class=\"regfield-holder\">\n");
      out.write("                <input type=\"password\" class=\"inputfield reginput\" id=\"passwordC\" onchange=\"checkSamePassword()\"/>\n");
      out.write("                <div class=\"field-notif\">\n");
      out.write("                    <div class=\"fnotif-text error\" id=\"passwordC-error\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"regsubmith\">\n");
      out.write("                <input type=\"submit\" value=\"Submit\" id=\"regsubmit\" disabled=\"true\" onclick=\"test()\" style=\"background:gray\"/>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
