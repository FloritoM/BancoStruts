<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <h1 style="text-align: center"><s:text name="simulador.titulo"/></h1>
        <br/>
        
        <div style="margin-left: 390px">
           <s:form>
                <s:textfield type="number" name="capital"/>
                <s:submit key="simulador.submit"/>
           </s:form> 
        </div>
        
        <br/>
        <s:if test="capital >= 1000">
            <span style="margin-left: 380px"><s:text name="simulador.total"/>: <s:property value="plazoFijo"/></span>
        </s:if>
        <s:else>
            <span style="color: red; margin-left: 380px"><s:text name="simulador.mensaje"/></span>
        </s:else>
    </body>
</html>
