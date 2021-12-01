<%-- 
    Document   : carta_porte
    Created on : 11/05/2021, 11:18:28 AM
    Author     : kcordon
--%>

<%@page import="modelo.CartaBarcos"%>
<%@page import="controlador.BeanCartaBarcos"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.Conexion"%>
<%@page import="modelo.Conexion"%>
<%@page import="modelo.Carta"%>
<%@page import="controlador.BeanCarta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <title> Carta de Porte</title>

        <jsp:include page="menu.jsp" flush="true"></jsp:include>

            <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
            <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
            <style>
                body {
                    background-color: #eceff1;
                }

            </style>
        </head>
        <body>
            <div class="container">
                <div class="card" id="card">

                    <div class="col s12 celeste">
                        <div class="row">
                            <br>
                            <span class="card-title"><h4 class="center white_text">Ingrese Datos Carta de Porte</h4></span>
                        </div>
                    </div>

                    <form action="ServletCarta" method="post">

                        <div class="col s12">
                            <div class="row">

                                <div class="col s12">

                                    <div class="col s3">
                                        <span><h5 class="center">Numero ATC</h5></span>

                                        <div class="input-field col s12">
                                            <input id="RW_ATC" type="text" class="validate" name="RW_ATC" required maxlength="20">
                                            <label for="RW_ATC">Numero ATC</label>
                                        </div>
                                    </div>


                                    <div class="col s9">
                                        <span><h5 class="center">Datos Buque</h5></span>                                      

                                        <div class="input-field col s2">
                                            <input id="Viaje" type="text" class="validate" name="RW_VIAJE_BARCO" required maxlength="25">
                                            <label for="Viaje">Viaje</label>
                                        </div>                                           

                                        <div class="input-field col s4">
                                            <input type="datetime-local" placeholder="." id="RW_FECHA_VIAJE_BARCO" name="RW_FECHA_VIAJE_BARCO" class="validate" >
                                        </div>
                                        <div class="input-field col s6">
                                            <select class="js-example-basic-single" name="BUQUE" required>
                                                <option value="" disabled selected>Nombre</option>
                                            <%
                                                LinkedList<BeanCartaBarcos> lista = CartaBarcos.ConsultarLista();

                                                for (int i = 0; i < lista.size(); i++) {

                                                    lista.get(i).getLR();
                                                    lista.get(i).getSENAL();
                                                    lista.get(i).getNOMBRE();


                                            %>

                                            <option value="<%= lista.get(i).getSENAL()%>_<%= lista.get(i).getLR()%>"><%= lista.get(i).getNOMBRE()%></option>
                                            <%
                                                }

                                            %>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div> 


                    <div class="center celeste">
                        <hr>
                        <span><h5 >Datos Contenedor</h5></span>
                        <hr>                    
                    </div>

                    <div class="row">
                        <div class="col s12">

                            <div class="input-field col s1">
                                <input id="Prefijo" type="text" class="validate" name="RW_PREFIJO_CONT" required maxlength="4">
                                <label for="Prefijo">Prefijo</label>
                            </div>
                            <div class="input-field col s2">
                                <input id="Numero_Contenedor" type="number" class="validate" name="RW_IDENTIFICACION_CONT" min="0" required maxlength="12">
                                <label for="Numero_Contenedor">Numero Contenedor</label>
                            </div>
                            <div class="input-field col s3">
                                <input id="Peso" type="number" class="validate" name="RW_PESO_CONTENEDOR" min="0" required maxlength="10">
                                <label for="Peso">Peso</label>
                            </div>
                            <div class="input-field col s3">


                                <select class="js-example-basic-single" name="RW_PAIS_ORIGEN" required>
                                    <option value="" disabled selected>PAIS ORIGEN</option>
                                    <%                                            try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("pais")%>"><%=rs.getString("nombre")%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    %>
                                </select>

                            </div>
                            <div class="input-field col s3">

                                <select class="js-example-basic-single" name="RW_PAIS_DESTINO" required>
                                    <option value="" disabled selected>PAIS DESTINO</option>
                                    <%
                                        try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("pais")%>"><%=rs.getString("nombre")%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    %>
                                </select>

                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col s12 ">
                            <div class="input-field col s3">
                                <select class="browser-default" name="RW_C_O_F" >
                                    <option value="" disabled selected>Contenedor/Furgon</option>
                                    <option value="1">Contenedor</option>
                                    <option value="2">Furgon</option>

                                </select>

                            </div>

                            <div class="input-field col s3">
                                <select class="browser-default" name="RW_MEDIDA" >
                                    <option value="" disabled selected>Medida</option>
                                    <option value="20">20</option>
                                    <option value="40">40</option>
                                    <option value="45">45</option>
                                    <option value="48">48</option>

                                </select>

                            </div>

                            <div class="input-field col s3">
                                <select class="browser-default" name="RW_ESTADO_CONT" >
                                    <option value="" disabled selected>Lleno/Vacio</option>
                                    <option value="1">Lleno</option>
                                    <option value="2">Vacio</option>


                                </select>

                            </div>

                            <div class="input-field col s3">
                                <select class="browser-default" name="RW_REFER_SECO_OPERANDO">
                                    <option value="" disabled selected>Tipo Contenedor</option>
                                    <option value="S">Seco</option>
                                    <option value="O">Rifer Encendido</option>
                                    <option value="A">Rifer Apagado</option>


                                </select>

                            </div>

                        </div>
                    </div>



                    <div class="row">
                        <div class="input-field col s12">
                            <textarea id="textarea2" class="materialize-textarea" data-length="1200" name="RW_DICE_CONTENER" required maxlength="1000"></textarea>
                            <label for="textarea2">Dice Contener</label>
                        </div>


                        <div class="input-field col s12">
                            <textarea id="textarea2" class="materialize-textarea" data-length="120" name="RW_DICE_OBSERVACIONES" required maxlength="1000"></textarea>
                            <label for="textarea2">Observaciones</label>
                        </div>
                    </div>
                    <div class="center celeste">
                        <hr>
                        <span><h5>Datos de Transportista</h5></span>
                        <hr>                    
                    </div>
                    <div class="row">
                        <div class="col s12">


                            <div class="input-field col s3">



                                <select class="js-example-basic-single" name="TRANSPORTISTA" required>
                                    <option value="" disabled selected>NOMBRE TRANSPORTISTA</option>
                                    <%                                                try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select TRANSPORTE, NOMBRE from PUERTO.EOPT_TRANSPORTES");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("TRANSPORTE")%>"><%=rs.getString("NOMBRE")%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    %>

                                </select>
                            </div>
                            <div class="input-field col s3">
                                <input id="Placa" type="text" class="validate" name="RW_PLACA_CABEZAL" required maxlength="12">
                                <label for="Placa">Placa Cabezal</label>
                            </div>

                            <div class="input-field col s2">
                                <input id="Prefijo_Chasis" type="text" class="validate" name="RW_PREFIJO_CHASIS" required maxlength="6">
                                <label for="Prefijo_Chasis">Prefijo Chasis</label>
                            </div>
                            <div class="input-field col s2">
                                <input id="Numero_Chasis" type="number" class="validate" name="RW_IDENTIFICACION_CHASIS" min="0" required maxlength="12">
                                <label for="Numero_Chasis">Numero Chasis</label>
                            </div>
                            <div class="input-field col s2">
                                <select class="js-example-basic-single" name="RW_PAIS_PLACA" required>
                                    <option value="" disabled selected>Pais Placa</option>
                                    <%                                                try {
                                            Conexion c = new Conexion();
                                            Connection con = c.getConexion();
                                            Statement st;
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select pais, nombre from PUERTO.eopt_paises");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("pais")%>"><%=rs.getString("nombre")%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    %>

                                </select>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col s12">
                            <span><h5 class="center">Datos Piloto</h5></span>
                            <!--                                <div class="input-field col s3 ">
                                                                <input id="Nombres" type="text" class="validate" name="RW_NOMBRE_PILOTO" required maxlength="100">
                                                                <label for="Nombres">Nombres</label>
                                                            </div>
                                                            <div class="input-field col s3">
                                                                <input id="Apellidos" type="text" class="validate" name="RW_APELLIDO_PILOTO" required maxlength="100">
                                                                <label for="Apellidos">Apellidos</label>
                                                            </div>
                                                            <div class="input-field col s3">
                                                                <input id="Licencia" type="text" class="validate" name="RW_LICENCIA_PILOTO" required maxlength="100">
                                                                <label for="Licencia">Licencia</label>
                                                            </div>-->
                            <div class="input-field col s12">

                                <select class="js-example-basic-single" name="PILOTO" required>
                                    <option value="" disabled selected>PAIS LICENCIA PILOTO</option>
                                    <%
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
                                    %>

                                    <option value="<%=rs.getString("visitante")%>"><%=rs.getString("PILOTO")%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                            out.println("Error " + e.getMessage());
                                        }
                                    %>
                                </select>

                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col s12">
                            <div class="table-responsive-sm">

                                <table border="1" class="table" id="tablaprueba">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th colspan="6" class="center">Declaracion Aduanera</th>

                                        </tr>
                                    </thead>
                                    <thead class="thead-dark ">
                                        <tr class="center">
                                            <th class="center">Modalidad</th>
                                            <th class="center">Numero de Orden</th>                            
                                            <th class="center">Observaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="button" class="waves-effect waves-light btn-small green darken-4" onclick="agregarFila()">Agregar Fila</button>
                        <button type="button" class="waves-effect waves-light btn-small red darken-4" onclick="eliminarFila()">Eliminar Fila</button>
                    </div>



                    <input type="hidden" value ="" id="cont" name="cont">
                    <input type="hidden"  name="RW_ID_RECEPCION" value="" >
                    <input type="hidden"  name="USUARIO_DE_SERVICIO" value="19165011" required>

                    <div class="input-field">
                        <input type="submit" value="Ingresar" class="btn-large light-blue accent-4" name="enviar"> 

                    </div>

            </div>

        </form>

    </div>


    <script>
        var a = 0;
        function agregarFila() {
            a++;
            document.getElementById("tablaprueba").insertRow(-1).innerHTML = "<td>\n\
            <select class='js-example-basic-single col s6' name='DA[" + a + "]'>\n"
                    + "<option value='' disabled selected>DECLARACION</option>\n"
        <%                                            try {
                Conexion c = new Conexion();
                Connection con = c.getConexion();
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT ECR_MODALIDAD, ECR_DESCRIPCION, ECR_CODIGO_REGIMEN_MODALIDAD FROM PUERTO.eopt_cat_regimen where ecr_estado = 'A'");
                while (rs.next()) {
        %>
            + "<option value='<%=rs.getString("ECR_MODALIDAD")%>'><%=rs.getString("ECR_DESCRIPCION")%></option>\n"<%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("Error " + e.getMessage());
                }
        %>
            + "</select></td><td><input  type='text' name='Numero_Orden[" + a + "]'/></td>\n\
            <td><input type='text' name='Observaciones[" + a + "]'/></td>";
            document.getElementById("cont").value = a;
            $('.js-example-basic-single').select2();
        }

        function eliminarFila() {
            var table = document.getElementById("tablaprueba");
            var rowCount = table.rows.length;
            //console.log(rowCount);

            if (rowCount <= 1)
                alert('No se puede eliminar el encabezado');
            else
                table.deleteRow(rowCount - 1);
        }

    </script>

    <script>
        $(document).ready(function () {
            $('.js-example-basic-single').select2({
                width: '100%'
            });
        });

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
