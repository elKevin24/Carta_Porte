<%-- 
    Document   : newjsp
    Created on : 19/05/2021, 04:02:07 PM
    Author     : kcordon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
     
        <script>
var a = 0;
            function agregarFila() {
                a++;
                document.getElementById("tablaprueba").insertRow(-1).innerHTML = '<td><input type="text" name="Nombre[' + a + ']"/></td><td><input type="text" name="Modalidad[' + a + ']"/></td><td><input type="text" name="Vacio[' + a + ']"/></td>\n\
        <td><input type="text" name="Codigo_Region[' + a + ']"/></td><td><input type="text" name="Numero_Orden[' + a + ']"/></td>\n\
<td><input type="text" name="Observaciones[' + a + ']"/></td>';
        document.getElementById("cont").value = a;
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
        
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        
    </head>
    <body>
        <h1>Hello World!</h1>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" rel="stylesheet"/>

        <div class="container">
            <div class="row">
                <form action="ServletCarta" method="post">
                <table border="1" class="table" id="tablaprueba">
                    <thead class="thead-dark">
                        <tr>
                            <th>Numero</th>
                            <th>Modalidad</th>
                            <th>          </th>
                            <th>Codigo Region</th>
                            <th>Numero de Orden</th>                            
                            <th>Observaciones</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>

                <div class="form-group">
                    <button type="button" class="btn btn-primary mr-2" onclick="agregarFila()">Agregar Fila</button>
                    <button type="button" class="btn btn-danger" onclick="eliminarFila()">Eliminar Fila</button>
                </div>
                    
                    <input type="hidden" value ="" id="cont" name="cont">
                    
                     <div class="input-field col s offset-s9">
                        <input type="submit" value="Ingresar" class="btn-large light-blue accent-4" name="enviar"> 

                    </div>
                    
                    </form>
            </div>
        </div>
        
        <select class="js-example-basic-single" name="state">
            <option value="AL">Alabama</option>
            ...
            <option value="WY">Wyoming</option>
        </select>


        <script>
            $(document).ready(function() {
    $('.js-example-basic-single').select2();
});
            
        </script>
        
    </body>
</html>
