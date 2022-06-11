<%-- 
    Document   : group
    Created on : Jun 8, 2022, 8:18:41 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .lienket a{
            text-decoration: none
        }
    </style>
    <body>
        <div>
            
            
        </div>
        
        <div class="lienket">
            Group :
            <table border = "2px">
                <tr>
                    <c:forEach items="${requestScope.group}" var="g">
                        <td>
                            <a href="student?id=${g.gid}">${g.gname}</a>
                        </td> 
                    </c:forEach>
                </tr>
            </table>
        </div>
        
        
    </body>
</html>
