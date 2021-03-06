<%-- 
    Document   : index
    Created on : 21/05/2018, 12:12:11 PM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/jpeg" href="https://hh.santotomasport.com.gt/global/santotomasport.com.gt/EMPORNAC_logo.png" />
        <title>Cotizador Empornac</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <link href="css/color.css" rel="stylesheet" type="text/css"/>

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

    <body>
        <nav>
            <div id="nav" class="nav-wrapper">
                <div class="light-blue darken-4">


                    <ul class="right hide-on-med-and-down"> 

                        <li><a href="Login.jsp">Salir</a></li>
                    </ul>



                    <ul id="slide-out" class="sidenav">
                        <li>

                            <div class="user-view">

                                <div class="background" >
                                    <img src="img/2a85f2.png"/>


                                </div>

                                <a href="#user"><img class="circle" src="img/EMPORNAC_logo.png" ></a>                                
                                <a href="#name"><span class="white-text name"></span></a>
                                <a href="#name"><span class="white-text name"></span></a>
                                <a href="#email"><span class="white-text email"></span></a>
                            </div>
                        </li>

                        <li><a class="subheader">Menu Cotizaciones</a></li>
                        <ul class="collapsible collapsible-accordion">
                            <li>
                            <li><a href="carta_porte.jsp">Crear Documento</a></li>
                            </li>
                            <li>

                                <a class="collapsible-header">Pilotos<i class="material-icons">peoplearrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>

                                        <li><a href="pilotos.jsp">Creados</a></li>
                                        <li><a href="Lista_Pilotos.jsp">Listado</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>

                                <a class="collapsible-header">Consultas<i class="material-icons">account_boxarrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>

                                        <li><a href="Consulta.jsp">Creados</a></li>
                                        <li><a href="EstadoCarta.jsp">Estado Carta Porte</a></li>
                                        

                                    </ul>
                                </div>
                            </li>
                            <li><a href="Login.jsp">Salir</a></li>
                            <!--<li><a href="buscar.jsp">Salir</a></li>-->


                        </ul>

                    </ul>

                    <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>
                </div>
            </div>
        </nav>


    </body>

    <script language="javascript">

        document.addEventListener('DOMContentLoaded', function () {
            var elems = document.querySelectorAll('.sidenav');
            var instances = M.Sidenav.init(elems, {
                direction: 'left',
                hoverEnabled: false
            });
            var collapsibleElem = document.querySelector('.collapsible');
            var collapsibleInstance = M.Collapsible.init(collapsibleElem, {
                direction: 'left',
                hoverEnabled: false
            });
        });




    </script>
</html>
