<%-- 
    Document   : Detalle
    Created on : 17/11/2020, 10:06:01 AM
    Author     : kcordon
--%>


<%@page import="controlador.BeanCarta_Detalle"%>
<%@page import="modelo.detalle_carta"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Carta"%>
<%@page import="controlador.BeanCarta"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="menu.jsp" flush="true"></jsp:include>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <!-- Bootstrap CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

            <link href="css/timeline.css" rel="stylesheet" type="text/css"/>
            <link href="css/color.css" rel="stylesheet" type="text/css"/>

        <%
            String consulta = request.getParameter("consulta");
            BeanCarta enc = new BeanCarta();
            enc = Carta.ConsultarVer(consulta);

            System.err.println("" + enc.getRW_ATC());
            int numero;

            if (enc.getRW_ESTADO().equals("1")) {
                numero = 0;
            } else if (enc.getRW_ESTADO().equals("2")) {
                numero = 25;

            } else if (enc.getRW_ESTADO().equals("3") || enc.getRW_ESTADO().equals("4")) {
                numero = 50;

            } else if (enc.getRW_ESTADO().equals("5") || enc.getRW_ESTADO().equals("6")) {
                numero = 75;

            } else {
                numero = 100;
            }


        %>



    </head>
    <body>
        <div class="container">

            <br>

            <h5 class="center"> Estado de Carta Porte del Contenedor <%= enc.getRW_PREFIJO_CONT() + enc.getRW_IDENTIFICACION_CONT()%> </h5>



            <br>
            <table id="miTablaPersonalizada" class="table">
  <thead>
    <tr>
      <th scope="col">Creacion</th>
      <th scope="col">Pendiente de Aprobacion</th>
      <th scope="col">Agendamiento</th>
      <th scope="col">Recepcion</th>
      <th scope="col">Finalizado</th>
    </tr>
  </thead>
            </table>
 


            <div class="position-relative m-4">
                <div class="progress" style="height: 1px;">
                    <div class="progress-bar" role="progressbar" style="width: <%= numero%>%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <button type="button" class="position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill" data-bs-toggle="tooltip" data-bs-placement="top" title="Hora creacion: <%= enc.getRW_FECHA_RECEPCION_WEB()%>" style="width: 2rem; height:2rem; left:0">1</button>
                <button type="button" class="position-absolute top-0 translate-middle btn btn-sm btn-secondary rounded-pill" data-bs-toggle="tooltip" data-bs-placement="top" title="" style="width: 2rem; height:2rem; left:25%">2</button>
                <button type="button" class="position-absolute top-0 translate-middle btn btn-sm btn-secondary rounded-pill" data-bs-toggle="tooltip" data-bs-placement="top" title="" style="width: 2rem; height:2rem; left:50%">3</button>
                <button type="button" class="position-absolute top-0 translate-middle btn btn-sm btn-secondary rounded-pill" data-bs-toggle="tooltip" data-bs-placement="top" title="" style="width: 2rem; height:2rem; left:75%">4</button>
                <button type="button" class="position-absolute top-0 translate-middle btn btn-sm btn-secondary rounded-pill" data-bs-toggle="tooltip" data-bs-placement="top" title="" style="width: 2rem; height:2rem; left:100%">5</button>

                <%

                    LinkedList<BeanCarta> lista = Carta.ConsultarT(consulta);

                    for (int i = 0; i < lista.size(); i++) {
                        int a = 25;
                        if (lista.get(i).getRWTE_RWE().equals("2")) {
                            

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='" + lista.get(i).getRWTE_FECHA() + "' style='width: 2rem; height:2rem; left:25%'>2</button>");
                        }
                        if (lista.get(i).getRWTE_RWE().equals("3")) {

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='" + lista.get(i).getRWTE_FECHA() + "' style='width: 2rem; height:2rem; left:50%'>3</button>");
                        }
                        if (lista.get(i).getRWTE_RWE().equals("4")) {

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-danger rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='RECHAZADA: " + lista.get(i).getRWTE_FECHA() + " Motivo:  " + lista.get(i).getRw_observaciones_opip() + "' style='width: 2rem; height:2rem; left:50%'>3</button>");
                        }

                        if (lista.get(i).getRWTE_RWE().equals("5")) {

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='" + lista.get(i).getRWTE_FECHA() + "' style='width: 2rem; height:2rem; left:75%'>4</button>");
                        }

                        if (lista.get(i).getRWTE_RWE().equals("6")) {

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-danger rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='" + lista.get(i).getRWTE_FECHA() + "' style='width: 2rem; height:2rem; left:75%'>4</button>");
                        }
                        if (lista.get(i).getRWTE_RWE().equals("7")) {

                            //out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='"+lista.get(i).getRWTE_FECHA()+"' style='width: 2rem; height:2rem; left:"+ (25+i*25)+"%'>"+(i+2)+"</button>");
                            out.println("<button type='button' class='position-absolute top-0 translate-middle btn btn-sm btn-primary rounded-pill' data-bs-toggle='tooltip' data-bs-placement='top' title='" + lista.get(i).getRWTE_FECHA() + "' style='width: 2rem; height:2rem; left:100%'>5</button>");
                        }

                    }

                %>  

            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(function () {
                $("[data-bs-toggle='tooltip']").tooltip();
            });
        </script>

    </body>
</html>
