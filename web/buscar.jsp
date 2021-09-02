<%-- 
    Document   : buscar
    Created on : 14/07/2021, 09:11:16 AM
    Author     : kcordon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    </head>
    <body>


        
        


        <div class="form-floating mb-3">
            
            <input type="text" class="form-control" placeholder="PILOTO" aria-label="Username"  id="txtBuscar" onkeyup="buscar()" aria-describedby="addon-wrapping">
            <label for="txtBuscar">PILOTO</label>
            <div id="resultado" class="z-index-n1 bg-white"></div>
            
        </div>
        
        
        

        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <script>

            function buscar() {
                //lo que el usuario escribio
                var txtFiltro = $("#txtBuscar").val();
                $.ajax({
                    url: "busca.do",
                    data: {
                        filtro: txtFiltro,
                        param: 2

                    },
                    success: function (result) {
                        $("#resultado").html(result);
                    }
                });
            }


            function myFunction(valor) {



                document.getElementById("txtBuscar").value = valor;
                document.getElementById("resultado").innerHTML = " ";
            }

        </script>
    </body>
</html>
