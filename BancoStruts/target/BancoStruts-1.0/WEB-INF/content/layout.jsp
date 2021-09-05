<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            <tiles:insertAttribute name="title" ignore="true"/>
        </title>
        <s:head/>
    </head>
    <body style="background-color: #b8e5fe">
        <%-- 
        <table border="1" cellpadding="2" align="center">
            <tr>
                <td height="30" colspan="2">
                    <tiles:insertAttribute name="header"/>
                </td>
            </tr>
            <tr>
                <td height="250">
                    <tiles:insertAttribute name="menu"/>
                </td>
                <td width="350">
                    <tiles:insertAttribute name="body"/>
                </td>
            </tr>
            <tr>
                <td height="30" colspan="2">
                    <tiles:insertAttribute name="footer"/>
                </td>
            </tr>
        </table>--%>

        <div style="width: 960px; margin: auto; border: 2px solid black; text-align: center; 
             background-color: #080268; color: white">
            <tiles:insertAttribute name="header"/>
        </div>

        <nav style="width: 960px; margin: 20px auto; text-transform: uppercase;
             display: flex; flex-direction: row; justify-content: space-between">
            <tiles:insertAttribute name="menu"/>
        </nav>

        <section style="width: 960px; margin: auto; border: 2px solid black;
                 background-color: #080268; color: white;">
            <tiles:insertAttribute name="body"/>
        </section>

        <footer style="margin-top: 50px; text-align: center">
            <tiles:insertAttribute name="footer"/>
        </footer>
        

        <div style="margin-top: 50px; text-align: center">
            <s:a href="%{localeES}"><s:text name="form.espanol"/></s:a>
                | 
            <s:a href="%{localeEN}"><s:text name="form.ingles"/></s:a>
        </div>

    </body>
</html>
