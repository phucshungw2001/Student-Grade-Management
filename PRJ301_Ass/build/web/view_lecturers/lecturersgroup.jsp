<%-- 
    Document   : lecturersgroup
    Created on : Jul 10, 2022, 7:50:21 PM
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
    <body>
        <div class="e">
            <h2> University Academic Portal</h2>       
        </div>

        <div class="ee">
            <div>
                <p> <a href=""></a>
                </p>
            </div>
            <div class="eee"> 
                <p>
                    <c:if test="${sessionScope.account != null}">
                    <div >
                        <p>
                            <a href="logout">LogOut</a>             
                        </p>
                    </div>
                </c:if>  
                </p>
            </div>   

        </div>         

        <table class="lienket">
            <th>Course</th>
            <c:forEach items="${requestScope.sublecurers}" var="s">
                <tr>
                    <td>
                        <a href="grouplecturers?lid=${requestScope.lid}&subid=${s.subid}"> ${s.subname}</a>(${s.subcode}) 
                    </td>
                </tr>

            </c:forEach>
        </table>
    </body>
    <style>
        th{
            background-color:#6b99da;
            display: table-cell;
        }
        .lienket a{
            text-decoration: none
        }
        .lienket
        {
            margin: 3%;
            flex: 20%;
            display: flex;
            justify-content: center;
        }

        .e{
            margin-left:  3.2%;
            display: flex;
            justify-content: left;
            font-size: 20px;
        }
        .ee{
            margin: 3.4%;
            display: flex;
            justify-content: left;
            background-color: #f5f5f5;
            height: 44px;

        }
        .ee a{
            text-decoration: none;
            color: #337ab7;
        }
        .ee p{
            padding-left: 15px;
            font-family: cursive;
            font-size: 13px;
        }
        .eee{
            margin-left: 90%;
        }
        p{
            font-size: 15px;
        }

    </style>
</html>
