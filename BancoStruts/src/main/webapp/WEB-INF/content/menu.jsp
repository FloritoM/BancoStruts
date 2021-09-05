<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <s:head/>
    </head>
    <body>
        <a style="text-decoration: none; color: black" href="<s:url action="principalAction"/>"><s:text name="menu.principal"/></a>
        <br/>
        <a style="text-decoration: none; color: black" href="<s:url action="serviciosAction"/>"><s:text name="menu.servicios"/></a>
        <br/>
        <a style="text-decoration: none; color: black" href="<s:url action="simuladorAction"/>"><s:text name="menu.simulador"/></a>
        <br/>
        <a style="text-decoration: none; color: black" href="<s:url action="sucursalesAction"/>"><s:text name="menu.sucursales"/></a>
        <br/>
        <a style="text-decoration: none; color: black" href="<s:url action="contactoAction"/>"><s:text name="menu.contacto"/></a>

        <s:url action="displayES_main" var="localeES">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:url action="displayEN_main" var="localeEN">
            <s:param name="request_locale">en</s:param>
        </s:url>
    </body>
</html>
