<%-- 
    Document   : student
    Created on : Jun 8, 2022, 8:41:25 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/student.css" rel="stylesheet" type="text/css"/>    
    </head>
    <body>
        <%
          int count = (Integer)request.getAttribute("count");
        %>

        <div class="e">
            <h2> University Academic Portal</h2>       
        </div>

        <div class="ee">
            <div>
                <p> <a href="homestudent">Home</a>
                    | View Student   </p>
            </div>
            <div class="eee">
                <p>
                    <c:if test="${sessionScope.account != null}">
                    <div class="aaaaa">
                        <p >
                            <a href="logout">LogOut</a>             
                        </p>
                    </div>
                </c:if>  
                </p>
            </div>           
        </div>   

        <div class="lienket">         
            <p1>Group : <c:forEach items="${requestScope.group}" var="g">
                    <c:if test="${g.gid eq requestScope.id}">                          
                        ${g.gname}                        
                    </c:if>                       
                </c:forEach> </p1>
        </div>


        <div class="aa">
            <form action="student" method="POST">     
                <input type="text" name="code" >
                <input type="hidden" name="id" value="${requestScope.id}">
                <input type="Submit" value="Search" class="bb">
            </form>   
        </div>
        <div class="cc">
            ... then see student list
        </div> 
        <div class="lienket">
            <table>               
                <tr >
                    <th class="index">Index</th>                     
                    <th class="name">Image</th>
                    <th class="name">Member</th>
                    <th class="code">Code</th>
                    <th class="name">Name</th>                     
                    <th class="code">Dob</th>
                    <th class="code">Address</th>
                    <th class="gender">Gender</th>        
                </tr>              
                <td style="vertical-align:top"></td>
                <c:forEach items="${requestScope.stu}" var="s" >              
                    <tr>
                        <td style="vertical-align:top"><%=count++%></td>
                        <td style="text-align:center">                   
                            <img class="a" src="${s.simg}" alt=""/>
                        </td>
                        <td style="vertical-align:top">

                            <c:forEach items="${sessionScope.account}" var="a">
                                <a href="mark?sid=${a.getStu().sid}">${s.smember}</a>                
                            </c:forEach>  

                        </td>

                        <td style="vertical-align:top">
                            ${s.code}                    
                        </td>
                        <td style="vertical-align:top">${s.sname}</td>                         
                        <td style="vertical-align:top">${s.sdob}</td>
                        <td style="vertical-align:top">${s.saddress}</td> 
                        <td style="vertical-align:top">                       
                            <img class="b" src="assets/img/${s.sgender?"nam.png":"gai.png"}" alt=""/>
                        </td>    
                    </tr>  
                </c:forEach>
            </table>
        </div>
        <div style="height: 30px;"></div>

        <jsp:include page="../footer.jsp"></jsp:include>
    </body>

</html>
