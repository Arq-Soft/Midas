--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexion</title>
    </head>
    <body>

        <%
            Connection cn = null;
            try {
                String link = "jdbc:mysql://localhost:3306/estudiantesdb?zeroDateTimeBehavior=convertToNull";

                //Cargar el Driver
                Class.forName("com.mysql.jdbc.Driver");
                //Abrir conexion
                cn = DriverManager.getConnection(link, "root", "root");

                out.println("Conexion Disponible, conectado correctamente");
            } catch (Exception e) {
                out.println("Error " + e.getMessage());
            }

        %>

    </body>
</html>
