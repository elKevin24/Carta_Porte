package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.CartaBarcos;
import controlador.BeanCartaBarcos;
import java.util.LinkedList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import modelo.Conexion;
import modelo.Conexion;
import modelo.Carta;
import controlador.BeanCarta;

public final class carta_005fporte_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title> Carta de Porte</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
                     
            BeanCarta a = new BeanCarta();
            a = Carta.Consultar();
        
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, true);
      out.write("\n");
      out.write("\n");
      out.write("            <link href=\"https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css\" rel=\"stylesheet\" />\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js\"></script>\n");
      out.write("            <style>\n");
      out.write("                body {background-color: #eceff1;}\n");
      out.write("\n");
      out.write("            </style>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"card\" id=\"card\">\n");
      out.write("\n");
      out.write("                    <div class=\"col s12 celeste\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <br>\n");
      out.write("                            <span class=\"card-title\"><h4 class=\"center white_text\">Ingrese Datos Carta de Porte</h4></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <form action=\"ServletCarta\" method=\"post\">\n");
      out.write("\n");
      out.write("                        <div class=\"col s12\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                <div class=\"col s12\">\n");
      out.write("\n");
      out.write("                                    <div class=\"col s3\">\n");
      out.write("                                        <span><h5 class=\"center\">Numero ATC</h5></span>\n");
      out.write("\n");
      out.write("                                        <div class=\"input-field col s12\">\n");
      out.write("                                            <input id=\"RW_ATC\" type=\"text\" class=\"validate\" name=\"RW_ATC\" required maxlength=\"20\">\n");
      out.write("                                            <label for=\"RW_ATC\">Numero ATC</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <div class=\"col s9\">\n");
      out.write("                                        <span><h5 class=\"center\">Datos Buque</h5></span>                                      \n");
      out.write("\n");
      out.write("                                        <div class=\"input-field col s2\">\n");
      out.write("                                            <input id=\"Viaje\" type=\"text\" class=\"validate\" name=\"RW_VIAJE_BARCO\" required maxlength=\"25\">\n");
      out.write("                                            <label for=\"Viaje\">Viaje</label>\n");
      out.write("                                        </div>                                           \n");
      out.write("\n");
      out.write("                                        <div class=\"input-field col s4\">\n");
      out.write("                                            <input type=\"datetime-local\" placeholder=\".\" id=\"RW_FECHA_VIAJE_BARCO\" name=\"RW_FECHA_VIAJE_BARCO\" class=\"validate\" >\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"input-field col s6\">\n");
      out.write("                                            <select class=\"js-example-basic-single\" name=\"BUQUE\" required>\n");
      out.write("                                                <option value=\"\" disabled selected>Nombre</option>\n");
      out.write("                                            ");
                                                
                                                LinkedList<BeanCartaBarcos> lista = CartaBarcos.ConsultarLista();

                                                for (int i = 0; i < lista.size(); i++) {

                                                    lista.get(i).getLR();
                                                    lista.get(i).getSENAL();
                                                    lista.get(i).getNOMBRE();


                                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <option value=\"");
      out.print( lista.get(i).getSENAL());
      out.write('S');
      out.print( lista.get(i).getLR());
      out.write('"');
      out.write('>');
      out.print( lista.get(i).getNOMBRE());
      out.write("</option>\n");
      out.write("                                            ");

                                                }

                                            
      out.write("\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div> \n");
      out.write("                    </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"center celeste\">\n");
      out.write("                        <hr>\n");
      out.write("                        <span><h5 >Datos Contenedor</h5></span>\n");
      out.write("                        <hr>                    \n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12\">\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s1\">\n");
      out.write("                                <input id=\"Prefijo\" type=\"text\" class=\"validate\" name=\"RW_PREFIJO_CONT\" required maxlength=\"4\">\n");
      out.write("                                <label for=\"Prefijo\">Prefijo</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s2\">\n");
      out.write("                                <input id=\"Numero_Contenedor\" type=\"number\" class=\"validate\" name=\"RW_IDENTIFICACION_CONT\" required maxlength=\"12\">\n");
      out.write("                                <label for=\"Numero_Contenedor\">Numero Contenedor</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <input id=\"Peso\" type=\"number\" class=\"validate\" name=\"RW_PESO_CONTENEDOR\" required maxlength=\"10\">\n");
      out.write("                                <label for=\"Peso\">Peso</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <select class=\"js-example-basic-single\" name=\"RW_PAIS_ORIGEN\" required>\n");
      out.write("                                    <option value=\"\" disabled selected>PAIS ORIGEN</option>\n");
      out.write("                                    ");
                                            try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("pais"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("nombre"));
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("\n");
      out.write("                                <select class=\"js-example-basic-single\" name=\"RW_PAIS_DESTINO\" required>\n");
      out.write("                                    <option value=\"\" disabled selected>PAIS DESTINO</option>\n");
      out.write("                                    ");

                                        try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("pais"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("nombre"));
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 \">\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <select class=\"browser-default\" name=\"RW_C_O_F\" >\n");
      out.write("                                    <option value=\"\" disabled selected>Contenedor/Furgon</option>\n");
      out.write("                                    <option value=\"1\">Contenedor</option>\n");
      out.write("                                    <option value=\"2\">Furgon</option>\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <select class=\"browser-default\" name=\"RW_MEDIDA\" >\n");
      out.write("                                    <option value=\"\" disabled selected>Medida</option>\n");
      out.write("                                    <option value=\"20\">20</option>\n");
      out.write("                                    <option value=\"40\">40</option>\n");
      out.write("                                    <option value=\"45\">45</option>\n");
      out.write("                                    <option value=\"48\">48</option>\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <select class=\"browser-default\" name=\"RW_ESTADO_CONT\" >\n");
      out.write("                                    <option value=\"\" disabled selected>Lleno/Vacio</option>\n");
      out.write("                                    <option value=\"1\">Lleno</option>\n");
      out.write("                                    <option value=\"2\">Vacio</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <select class=\"browser-default\" name=\"RW_REFER_SECO_OPERANDO\">\n");
      out.write("                                    <option value=\"\" disabled selected>Tipo Contenedor</option>\n");
      out.write("                                    <option value=\"S\">Seco</option>\n");
      out.write("                                    <option value=\"O\">Rifer Encendido</option>\n");
      out.write("                                    <option value=\"A\">Rifer Apagado</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s12\">\n");
      out.write("                            <textarea id=\"textarea2\" class=\"materialize-textarea\" data-length=\"1200\" name=\"RW_DICE_CONTENER\" required maxlength=\"1000\"></textarea>\n");
      out.write("                            <label for=\"textarea2\">Dice Contener</label>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"input-field col s12\">\n");
      out.write("                            <textarea id=\"textarea2\" class=\"materialize-textarea\" data-length=\"120\" name=\"RW_DICE_OBSERVACIONES\" required maxlength=\"1000\"></textarea>\n");
      out.write("                            <label for=\"textarea2\">Observaciones</label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"center celeste\">\n");
      out.write("                        <hr>\n");
      out.write("                        <span><h5>Datos de Transportista</h5></span>\n");
      out.write("                        <hr>                    \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <select class=\"js-example-basic-single\" name=\"TRANSPORTISTA\" required>\n");
      out.write("                                    <option value=\"\" disabled selected>NOMBRE TRANSPORTISTA</option>\n");
      out.write("                                    ");
                                                try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select TRANSPORTE, NOMBRE from PUERTO.EOPT_TRANSPORTES");
                                            while (rs.next()) {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("TRANSPORTE"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("NOMBRE"));
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s3\">\n");
      out.write("                                <input id=\"Placa\" type=\"text\" class=\"validate\" name=\"RW_PLACA_CABEZAL\" required maxlength=\"12\">\n");
      out.write("                                <label for=\"Placa\">Placa Cabezal</label>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"input-field col s2\">\n");
      out.write("                                <input id=\"Prefijo_Chasis\" type=\"text\" class=\"validate\" name=\"RW_PREFIJO_CHASIS\" required maxlength=\"6\">\n");
      out.write("                                <label for=\"Prefijo_Chasis\">Prefijo Chasis</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s2\">\n");
      out.write("                                <input id=\"Numero_Chasis\" type=\"number\" class=\"validate\" name=\"RW_IDENTIFICACION_CHASIS\" required maxlength=\"12\">\n");
      out.write("                                <label for=\"Numero_Chasis\">Numero Chasis</label>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s2\">\n");
      out.write("                                <select class=\"js-example-basic-single\" name=\"RW_PAIS_PLACA\" required>\n");
      out.write("                                    <option value=\"\" disabled selected>Pais Placa</option>\n");
      out.write("                                    ");
                                                try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("pais"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("nombre"));
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12\">\n");
      out.write("                            <span><h5 class=\"center\">Datos Piloto</h5></span>\n");
      out.write("                            <!--                                <div class=\"input-field col s3 \">\n");
      out.write("                                                                <input id=\"Nombres\" type=\"text\" class=\"validate\" name=\"RW_NOMBRE_PILOTO\" required maxlength=\"100\">\n");
      out.write("                                                                <label for=\"Nombres\">Nombres</label>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"input-field col s3\">\n");
      out.write("                                                                <input id=\"Apellidos\" type=\"text\" class=\"validate\" name=\"RW_APELLIDO_PILOTO\" required maxlength=\"100\">\n");
      out.write("                                                                <label for=\"Apellidos\">Apellidos</label>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"input-field col s3\">\n");
      out.write("                                                                <input id=\"Licencia\" type=\"text\" class=\"validate\" name=\"RW_LICENCIA_PILOTO\" required maxlength=\"100\">\n");
      out.write("                                                                <label for=\"Licencia\">Licencia</label>\n");
      out.write("                                                            </div>-->\n");
      out.write("                            <div class=\"input-field col s12\">\n");
      out.write("\n");
      out.write("                                <select class=\"js-example-basic-single\" name=\"PILOTO\" required>\n");
      out.write("                                    <option value=\"\" disabled selected>PAIS LICENCIA PILOTO</option>\n");
      out.write("                                    ");

                                        try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("Select a.visitante, nvl(a.nombre_uno, ' ')  ||' ' || nvl(a.nombre_dos, ' ') ||' ' || nvl(a.apellido_uno, ' ')   ||' ' || nvl(a.apellido_dos, ' ') ||' ' || a.numero_licencia AS PILOTO from\n"
                                                    + "PUERTO.EOPT_VISITANTES A\n"
                                                    + "WHERE tipo_visitante = 1\n"
                                                    + "and a.estatus = 'A'\n"
                                                    + "ORDER BY a.visitante desc");
                                            while (rs.next()) {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("visitante"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("PILOTO"));
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                        <div class=\"col s12\">\n");
      out.write("                            <table border=\"1\" class=\"table\" id=\"tablaprueba\">\n");
      out.write("                                <thead class=\"thead-dark\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th colspan=\"6\" class=\"center\">Declaracion Aduanera</th>\n");
      out.write("\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <thead class=\"thead-dark \">\n");
      out.write("                                    <tr class=\"center\">\n");
      out.write("                                        <th class=\"center\">Modalidad || Observaciones  || Codigo Region</th>\n");
      out.write("                                        <th class=\"center\">Numero de Orden</th>                            \n");
      out.write("                                        <th class=\"center\">Observaciones</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody></tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <button type=\"button\" class=\"waves-effect waves-light btn-small green darken-4\" onclick=\"agregarFila()\">Agregar Fila</button>\n");
      out.write("                        <button type=\"button\" class=\"waves-effect waves-light btn-small red darken-4\" onclick=\"eliminarFila()\">Eliminar Fila</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <input type=\"hidden\" value =\"\" id=\"cont\" name=\"cont\">\n");
      out.write("                    <input type=\"hidden\"  name=\"RW_ID_RECEPCION\" value=\"");
      out.print(a.getRW_ID_RECEPCION());
      out.write("\" >\n");
      out.write("                    <input type=\"hidden\"  name=\"USUARIO_DE_SERVICIO\" value=\"19165011\" required>\n");
      out.write("\n");
      out.write("                    <div class=\"input-field\">\n");
      out.write("                        <input type=\"submit\" value=\"Ingresar\" class=\"btn-large light-blue accent-4\" name=\"enviar\"> \n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        var a = 0;\n");
      out.write("        function agregarFila() {\n");
      out.write("            a++;\n");
      out.write("            document.getElementById(\"tablaprueba\").insertRow(-1).innerHTML = \"<td>\\n\\\n");
      out.write("            <select class='js-example-basic-single col s6' name='DA[\" + a + \"]'>\\n\"\n");
      out.write("                    + \"<option value='' disabled selected>DECLARACION</option>\\n\"\n");
      out.write("        ");
                                            try {
                Conexion c = new Conexion();
                Connection con = c.getConexion();
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT ECR_MODALIDAD, ECR_DESCRIPCION, ECR_CODIGO_REGIMEN_MODALIDAD FROM PUERTO.eopt_cat_regimen where ecr_estado = 'A'");
                while (rs.next()) {
        
      out.write("\n");
      out.write("            + \"<option value='");
      out.print(rs.getString("ECR_MODALIDAD"));
      out.write('\'');
      out.write('>');
      out.print(rs.getString("ECR_DESCRIPCION"));
      out.write("</option>\\n\"");

                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("Error " + e.getMessage());
                }
        
      out.write("\n");
      out.write("            + \"</select></td><td><input  type='text' name='Numero_Orden[\" + a + \"]'/></td>\\n\\\n");
      out.write("            <td><input type='text' name='Observaciones[\" + a + \"]'/></td>\";\n");
      out.write("            document.getElementById(\"cont\").value = a;\n");
      out.write("            $('.js-example-basic-single').select2();\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function eliminarFila() {\n");
      out.write("            var table = document.getElementById(\"tablaprueba\");\n");
      out.write("            var rowCount = table.rows.length;\n");
      out.write("            //console.log(rowCount);\n");
      out.write("\n");
      out.write("            if (rowCount <= 1)\n");
      out.write("                alert('No se puede eliminar el encabezado');\n");
      out.write("            else\n");
      out.write("                table.deleteRow(rowCount - 1);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('.js-example-basic-single').select2({\n");
      out.write("                width: '100%'\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
