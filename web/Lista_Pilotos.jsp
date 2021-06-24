

<%@page import="modelo.Pilotos"%>
<%@page import="controlador.BeanPilotos"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Compiled and minified JavaScript -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.css"/>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <jsp:include page="menu.jsp" flush="true"></jsp:include>
            <title>Trazabilidad Empornac</title>

        </head>
        <body>


            <div class="container">
                <div class="col s12">
                    <h3 class="center"> Listado de Pilotos </h3>
                    <table id="example" border="1"   class="display table table-hover table-bordered table-striped" >
                        <thead>

                            <tr>
                                <th>NUMERO</th>
                                <th>NOMBRE</th>
                                <th>SEGUNDO NOMBRE</th>
                                <th>APELLIDO</th>
                                <th>SEGUNDO APELLIDO</th>
                                <th>LICENCIA</th>
                                <th>VER</th>
                                <th>EDITAR</th>
                                <th>ELIMINAR</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%

                            LinkedList<BeanPilotos> lista = Pilotos.ConsultarLista();

                            for (int i = 0; i < lista.size(); i++) {

                                out.println("<tr>");
                                out.println("<td>" + lista.get(i).getID() + "</td>");
                                out.println("<td>" + lista.get(i).getNombre() + "</td>");
                                out.println("<td>" + lista.get(i).getSegundoNombre() + "</td>");
                                out.println("<td>" + lista.get(i).getApellido() + "</td>");
                                out.println("<td>" + lista.get(i).getSegundoApellido() + "</td>");
                                out.println("<td>" + lista.get(i).getLicencia()+ "</td>");

                                out.println("<td>" + "<a class='waves-effect waves-light btn-small ' onclick='return myFunction()'href=Detalle.jsp?consulta=" + lista.get(i).getID() + ">" + "Ver" + "</a>" + "</td>");
                                out.println("<td>" + "<a class='waves-effect waves-light btn-small orange darken-4' onclick='return myFunction()'href=EDITAR.jsp?consulta=" + lista.get(i).getID() + ">" + "Editar" + "</a>" + "</td>");
                                out.println("<td>" + "<a class='waves-effect waves-light btn-small red accent-4' onclick='return validar()' href=Eliminar.jsp?consulta=" + lista.get(i).getID() + ">" + "<i class='material-icons'>delete_forever</i>" + "Eliminar" + "</a>" + "</td>");

                                out.println("</tr>");
                            }
                        %>  
                    </tbody>
                    <tfoot>
                        <tr>

                            <th>NUMERO</th>
                            <th>NOMBRE</th>
                            <th>SEGUNDO NOMBRE</th>
                            <th>APELLIDO</th>
                            <th>SEGUNDO APELLIDO</th>
                            <th>LICENCIA</th>
                            <th>VER</th>
                            <th>EDITAR</th>
                            <th>ELIMINAR</th>
                        </tr>
                    </tfoot>
                </table>

            </div>
        </div>
        <script type="text/javascript">

            $(document).ready(function () {
                // Setup - add a text input to each footer cell
                $('#example tfoot th').each(function () {
                    var title = $(this).text();
                    $(this).html('<input type="text" placeholder="Search ' + title + '" />');
                });

                // DataTable
                $('#example').DataTable({

                    initComplete: function () {
                        // Apply the search
                        this.api().columns().every(function () {
                            var that = this;

                            $('input', this.footer()).on('keyup change clear', function () {
                                if (that.search() !== this.value) {
                                    that
                                            .search(this.value)
                                            .draw();
                                }
                            });
                        });
                    }, "order": [[2, "desc"]], className: 'dt-body-center',
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            extend: 'pdfHtml5',
                            messageTop: 'Lista Barcos.'
                        }
                    ]

                });

            });

        </script>

        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.1.1/jq-3.3.1/jszip-2.5.0/dt-1.10.24/af-2.3.6/b-1.7.0/b-colvis-1.7.0/b-html5-1.7.0/b-print-1.7.0/cr-1.5.3/date-1.0.3/fc-3.3.2/fh-3.1.8/kt-2.6.1/r-2.2.7/rg-1.1.2/rr-1.2.7/sc-2.0.3/sb-1.0.1/sp-1.2.2/sl-1.3.3/datatables.min.js"></script>
    </body>
</html>
