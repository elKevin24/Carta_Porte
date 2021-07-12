<%-- 
    Document   : pilotos
    Created on : 16/06/2021, 05:45:38 PM
    Author     : kcordon
--%>

<%@page import="modelo.Pilotos"%>
<%@page import="controlador.BeanPilotos"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <title>Mantenimiento Barcos</title>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page="menu.jsp" flush="true"></jsp:include>
            <!-- Bootstrap CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">

            <div class="card">
                <div class="card-header text-center">
                    Mantenimiento Barcos
                </div>
                <div class="card-body">



                    <form class="row g-3" action="ServletBarco" method="post" >
                        <div class="col-md-3">
                            <label for="LR" class="inputGroup-sizing-default">LR</label>
                            <input type="number" class="form-control" id="LR" name="LR" required="">
                        </div>
                        <div class="col-md-3">
                            <label for="SENAL_DISTINTIVA" class="inputGroup-sizing-default">SENAL DISTINTIVA</label>
                            <input type="text" class="form-control" id="SENAL_DISTINTIVA"  name="SENAL_DISTINTIVA" required="">
                        </div>
                        <div class="col-md-3">
                            <label for="NOMBRE_BUQUE" class="inputGroup-sizing-default">NOMBRE BUQUE</label>
                            <input type="text" class="form-control" id="SENAL_DISTINTIVA"  name="NOMBRE_BUQUE" required="">
                        </div>

                        <div class="col-md-3">
                            <label for="TIPO_DE_BARCO_POR_ESTRUCTURA" class="inputGroup-sizing-default">ESTRUCTURA BARCO</label>
                            <select class="form-select" id="TIPO_DE_BARCO_POR_ESTRUCTURA" name="TIPO_DE_BARCO_POR_ESTRUCTURA" required>

                                <%                                            try {
                                        Conexion c = new Conexion();
                                        Connection con = c.getConexion();
                                        Statement st;
                                        st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select TIPO_DE_BARCO_POR_ESTRUCTURA, DESCRIPCION from PUERTO.eopt_tipos_barc_estru");
                                        while (rs.next()) {
                                %>

                                <option value="<%=rs.getString("TIPO_DE_BARCO_POR_ESTRUCTURA")%>"><%=rs.getString("DESCRIPCION")%></option>
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


                <input type="hidden"  name="USUARIO_DE_SERVICIO" value="19165011" required>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Registrar</button>
                </div>
                </form>
            </div>
        </div>



    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->


</body>
</html>