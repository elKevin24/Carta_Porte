package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("          \n");
      out.write("      \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js\"></script>  \n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.min.js\"></script>  \n");
      out.write("<style>  \n");
      out.write("th, td {  \n");
      out.write("    text - align: center;  \n");
      out.write("    border: 1 px solid black;  \n");
      out.write("    border - collapse: collapse;  \n");
      out.write("}  \n");
      out.write("</style>  \n");
      out.write("<center>  \n");
      out.write("    <h2>TOTAL MARKS OF STUDENTS</h2>  \n");
      out.write("    <br />  \n");
      out.write("    <table id=\"simple_table\">  \n");
      out.write("        <tr>  \n");
      out.write("            <th>Roll No.</th>  \n");
      out.write("            <th>Name</th>  \n");
      out.write("            <th>Marks</th>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>1</td>  \n");
      out.write("            <td>Anna</td>  \n");
      out.write("            <td>85</td>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>2</td>  \n");
      out.write("            <td>Bhavesh</td>  \n");
      out.write("            <td>72</td>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>3</td>  \n");
      out.write("            <td>Sandhya</td>  \n");
      out.write("            <td>63</td>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>4</td>  \n");
      out.write("            <td>Rohan</td>  \n");
      out.write("            <td>90</td>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>5</td>  \n");
      out.write("            <td>Leena</td>  \n");
      out.write("            <td>82</td>  \n");
      out.write("        </tr>  \n");
      out.write("        <tr>  \n");
      out.write("            <td>6</td>  \n");
      out.write("            <td>Nayan</td>  \n");
      out.write("            <td>56</td>  \n");
      out.write("        </tr>  \n");
      out.write("    </table>  \n");
      out.write("    <br />  \n");
      out.write("    <input type=\"button\" onclick=\"generate()\" value=\"Export To PDF\" />  \n");
      out.write("</center>  \n");
      out.write("<script type=\"text/javascript\">  \n");
      out.write("function generate() {  \n");
      out.write("    var doc = new jsPDF('p', 'pt', 'letter');  \n");
      out.write("    var htmlstring = '';  \n");
      out.write("    var tempVarToCheckPageHeight = 0;  \n");
      out.write("    var pageHeight = 0;  \n");
      out.write("    pageHeight = doc.internal.pageSize.height;  \n");
      out.write("    specialElementHandlers = {  \n");
      out.write("        // element with id of \"bypass\" - jQuery style selector  \n");
      out.write("        '#bypassme': function(element, renderer) {  \n");
      out.write("            // true = \"handled elsewhere, bypass text extraction\"  \n");
      out.write("            return true  \n");
      out.write("        }  \n");
      out.write("    };  \n");
      out.write("    margins = {  \n");
      out.write("        top: 150,  \n");
      out.write("        bottom: 60,  \n");
      out.write("        left: 40,  \n");
      out.write("        right: 40,  \n");
      out.write("        width: 600  \n");
      out.write("    };  \n");
      out.write("    var y = 20;  \n");
      out.write("    doc.setLineWidth(2);  \n");
      out.write("    doc.text(200, y = y + 30, \"TOTAL MARKS OF STUDENTS\");  \n");
      out.write("    doc.autoTable({  \n");
      out.write("        html: '#simple_table',  \n");
      out.write("        startY: 70,  \n");
      out.write("        theme: 'grid',  \n");
      out.write("        columnStyles: {  \n");
      out.write("            0: {  \n");
      out.write("                cellWidth: 180,  \n");
      out.write("            },  \n");
      out.write("            1: {  \n");
      out.write("                cellWidth: 180,  \n");
      out.write("            },  \n");
      out.write("            2: {  \n");
      out.write("                cellWidth: 180,  \n");
      out.write("            }  \n");
      out.write("        },  \n");
      out.write("        styles: {  \n");
      out.write("            minCellHeight: 40  \n");
      out.write("        }  \n");
      out.write("    })  \n");
      out.write("    doc.save('CartaPorte.pdf');  \n");
      out.write("}  \n");
      out.write("</script>  \n");
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
