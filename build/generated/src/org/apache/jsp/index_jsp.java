package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>      \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>PulseUP</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/getPolls.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/showPollDiv.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/global.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/header.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/home.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"getPolls('account/getSubscribedPolls.jsp','subscribed-polls','4'), \n");
      out.write("                getPolls('account/getMyPolls.jsp','my-polls','4'), \n");
      out.write("                getPolls('account/getDiscoverPolls.jsp','discover-polls','4')\">\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div style=\"float: left; margin-left: 100px;\">\n");
      out.write("                <input type=\"button\" value=\"Create Poll\"/>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"float: right; margin-right: 100px;\">\n");
      out.write("                <input type=\"button\" value=\"Log-out\"/>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"home-content\">\n");
      out.write("            <div id='head'>This is Sparta! (Home)</div>\n");
      out.write("            <br/>\n");
      out.write("            \n");
      out.write("            <a onclick=\"showPollDiv('subscribed-polls','discover-polls','my-polls')\" \n");
      out.write("               class=\"clickable\" >Subscribed Polls</a>\n");
      out.write("            <a onclick=\"showPollDiv('discover-polls','subscribed-polls','my-polls')\" \n");
      out.write("               class=\"clickable\">Discover Polls</a>\n");
      out.write("            <a onclick=\"showPollDiv('my-polls','discover-polls','subscribed-polls')\" \n");
      out.write("               class=\"clickable\">My Polls</a>\n");
      out.write("  \n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                <div id=\"subscribed-polls\" style=\"display: inline-block\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"discover-polls\" style=\"display: none\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"my-polls\" style=\"display: none\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("             </div>\n");
      out.write("            <!------------------------------------------------------------------>\n");
      out.write("            <a href=\"account/login.jsp\">Login</a>\n");
      out.write("            <a href=\"account/register.jsp\">Register</a>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"verifyLogin\" method=do\"> \n");
      out.write("            <h1>");

                Cookie[] cookies = request.getCookies();
                if (cookies == null) {
                    response.sendRedirect("../account/login.jsp");
                } else {
                    out.print(cookies[0].getValue().toString() + " is the encrypted username logged in!");
      out.write("\n");
      out.write("                    <div>  </div>\n");
      out.write("                ");
     
                }
            
      out.write("</h1>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
