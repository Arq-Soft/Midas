<%-- 
    Document   : GenerarPDF
    Created on : Jun 2, 2018, 12:30:49 PM
    Author     : yalexander.cordoba
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PDF page</title>
    </head>
    <body>

        <%
            File reportFile = new File(application.getRealPath("newReport.jasper"));

            Map<String, Object> parametro = new HashMap<String, Object>();
            //Map buscar = new HashMap();
            
            //String valor = request.getParameter("BuscarId");
            //parametro.put("idB", new String(valor));

            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parametro, cn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);

            ServletOutputStream outputstream = response.getOutputStream();

            outputstream.write(bytes, 0, bytes.length);

            outputstream.flush();
            outputstream.close();
        %>


    </body>
</html>
