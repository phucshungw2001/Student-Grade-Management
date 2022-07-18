<%-- 
    Document   : viewallmark
    Created on : Jul 11, 2022, 8:11:41 AM
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
                <p> <a href="homelecturers">Home</a>
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
        <form action="studentlecturers" method="POST">
            <table class="lienket">
                <th>Group</th>
                    <c:forEach items="${requestScope.grouplecturers}" var="g">
                    <tr>
                        <td>
                            <a href="studentlecturers?lid=${requestScope.lid}&subid=${requestScope.subid}&gid=${g.gid}"> ${g.gname}</a>                  
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <c:if test="${requestScope.assessment ne null}">
                <table class="lienket1">
                    <tr>
                        <td></td>
                        <c:forEach items="${requestScope.assessment}" var="a">
                            <td>${a.name}</td>
                        </c:forEach>
                    </tr>

                    <c:forEach items="${requestScope.student}" var="s">
                        <tr> 
                            <td> ${s.sname}</td>
                            <c:forEach items="${requestScope.assessment}" var="a">
                                <td>
                                    <input name="score${s.sid}_${a.id}" type="text"
                                           <c:forEach items="${requestScope.listmark}" var="e">
                                               <c:if test="${e.student.sid eq s.sid and e.assessment.id eq a.id}">
                                                   value="${e.score}"
                                               </c:if>
                                           </c:forEach>      
                                           />        
                                    <input name="eid${s.sid}_${a.id}" type="hidden"
                                           <c:forEach items="${requestScope.listmark}" var="e">
                                               <c:if test="${e.student.sid eq s.sid and e.assessment.id eq a.id}">
                                                   value="${e.id}"
                                               </c:if>
                                           </c:forEach>      
                                           /> 
                                    <input type="hidden" name="component" value="${s.sid}_${a.id}_${requestScope.subid}"/>
                                    <input type="hidden" name="subid" value="${requestScope.subid}">
                                    <input type="hidden" name="lid" value="${requestScope.lid}">
                                    
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>

                </table>
                <input type="hidden" value="${requestScope.lid}" name="lid"/>
                <input type="hidden" value="${requestScope.subid}" name="subid"/>
                <input type="hidden" value="${requestScope.gid}" name="gid"/>       
                
                <input class="save"  type="submit" value="Save"/>
            </c:if>     
        </form>
    </body>
    <style>
        input{
            width: 110px;
        }

        th{
            background-color:#6b99da;
            display: table-cell;
        }
        .lienket a{
            text-decoration: none
        }
        .lienket
        {
            margin-top: 3%;
            margin-left:  10%;
            flex: 20%;
            display: flex;
            justify-content: left;
        }
        .lienket1 a{
            text-decoration: none
        }
        .lienket1
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
            margin-left: 85%;
        }
        p{
            font-size: 15px;
        }
        .save{
            background-color: #3e8f3e;
            padding: 5px;
            border-radius: 5px;
            color: white;
            margin-left:  46.5%;
            }

    </style>
</html>
