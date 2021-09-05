<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <s:head/>
    </head>
    <body>
        <h1 style="text-align: center"><s:text name="servicios.titulo"/></h1>
        <br/>
        <ul>
            <li><s:text name="servicios.prestamos"/></li>
            <br/>
            <li><s:text name="servicios.ahorros"/></li>
            <br/>
            <li><s:text name="servicios.seguros"/></li>
        </ul>
    </body>
</html>
