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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"pt-br\">\r\n");
      out.write("    <head>\r\n");
      out.write("            <meta charset=\"UTF-8\">\r\n");
      out.write("            <meta name=\"viewport\" content=\"width=devicre-width, initial-scale=1\">\r\n");
      out.write("            <link rel=\"shortcut icon\" href=\"imagens/favicon/favicon.ico\" type=\"image/x-icon\" />\r\n");
      out.write("            \r\n");
      out.write("            <!--Stylos da pagina-->\r\n");
      out.write("            <link rel=\"stylesheet\" href=\"resources/bootstrap/css/bootstrap.css\">\r\n");
      out.write("            <link rel=\"stylesheet\" href=\"resources/css/style.css\">\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            <!--Scripts da pagina-->\r\n");
      out.write("            <script src=\"bootstrap/js/bootstrap.js\"></script>\r\n");
      out.write("            \r\n");
      out.write("            <!--titulo da pagina-->\r\n");
      out.write("            <title>Gente Telecom</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <body class=\"home blog geral\">     \r\n");
      out.write("        <div class=\"nav navbar\">\r\n");
      out.write("            <h1 class=\"nav navbar-text\"><img src=\"imagens/logotipo.png\"></h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <br>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                  <div class='col-md-4'></div>\r\n");
      out.write("                  <div class=\"col-md-4\">\r\n");
      out.write("                      <div class=\"login-box well\">\r\n");
      out.write("                          <div class=\"text-center\">\r\n");
      out.write("                              <br><br>\r\n");
      out.write("                          </div>\r\n");
      out.write("\r\n");
      out.write("                              <form>\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                      <label for=\"exampleInputEmail1\">Endereço de Email</label>\r\n");
      out.write("                                      <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"exemplo@servico.com\">\r\n");
      out.write("                                      <small id=\"emailHelp\" class=\"form-text text-muted\">Nunca vamos compartilhar seu e-mail com mais ninguém.</small>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                      <label for=\"exampleInputPassword1\">Senha</label>\r\n");
      out.write("                                      <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Senha\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"form-check\">\r\n");
      out.write("                                      <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\">\r\n");
      out.write("                                      <label class=\"form-check-label\" for=\"exampleCheck1\">Check me out</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!--<button type=\"submit\" class=\"btn btn-primary\">Entrar</button>-->\r\n");
      out.write("                                    <center><p><a class=\"btn btn-primary \" href=\"pages/home.jsp\">home</a></p></center>\r\n");
      out.write("                              </form>\r\n");
      out.write("\r\n");
      out.write("                      </divclass>\r\n");
      out.write("                  </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("      <!-- Main jumbotron for a primary marketing message or call to action -->\r\n");
      out.write("<!--      <div class=\"jumbotron innerjumbotron\"  id=\"large-header\">\r\n");
      out.write("          <canvas id=\"demo-canvas\"></canvas>\r\n");
      out.write("      </div>-->\r\n");
      out.write("      <!-- /.jumbotron --> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <!-- Inicio animação -->\r\n");
      out.write("<!--      <script type='text/javascript' src='resources/js/animation/jquery.form.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/TweenLite.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/EasePack.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/device.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/isotope.pkgd.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/jquery.ba-bbq.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/bootstrap.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/bootstrap-hover-dropdown.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/jquery.bxslider.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/classie.js?ver=2.3.0'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/jquery.viewportchecker.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/main.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/core.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/datepicker.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/wp-embed.min.js'></script>\r\n");
      out.write("      <script type='text/javascript' src='resources/js/animation/jsanim.js'></script>-->\r\n");
      out.write("      <!-- Fim animação-->\r\n");
      out.write("        <script src=\"resources/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"resources/bootstrap/js/bootstrap.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
