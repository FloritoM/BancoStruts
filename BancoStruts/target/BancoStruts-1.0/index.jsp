<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="form.titulo"/></title>
        <s:head/>
    </head>
    <body>
        <h1><s:text name="form.titulo"/></h1>

        <%--<s:actionmessage/>--%>
        <s:actionerror/>

        <s:form action="validarUser">
            <s:textfield key="form.user" name="user"/>
            <s:password key="form.password" name="password"/>
            <%--<s:password label="Contraseña" name="password"/>--%>
            <s:submit key="form.enviar"/>
        </s:form> 
        </br> 
        <s:url action="displayES" var="localeES">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:url action="displayEN" var="localeEN">
            <s:param name="request_locale">en</s:param>
        </s:url>

        <s:a href="%{localeES}"><s:text name="form.espanol"/></s:a>
            | 
        <s:a href="%{localeEN}"><s:text name="form.ingles"/></s:a>
    </body>
</html>
