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
    </head>
    <style>
        .a{
            width: 120px;
            height: 140px;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 0px;
        }
        .b
        {
            width: 50px;
            height: 50px;
            margin-left: 25px;
        }
        th{
            background-color:#6b99da;
            display: table-cell;
        }
        .name{
            width: 180px;
        }
        .gender
        {
            width:120px;
        }
        .code
        {
            width: 120px;

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
        .index
        {
            width: 60px;
        }
        .aa{
            text-align:right;
            margin: 4%;
        }
        .bb{
            background-color: skyblue;
        }
        input{
            border-radius: 30px;
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
        }
        p{
           padding-left: 15px; 
           font-family: cursive;
           font-size: 13px;        
        }
        
         .ee a{
            text-decoration: none;
             color: #337ab7;   
        }

    </style>
    <body>
        <%
          int count = (Integer)request.getAttribute("count");
        %>

        <div class="e">
            <h2> University Academic Portal</h2>       
        </div>
        
        <div class="ee">
            <div>
            <p> <a href="group">Home</a>
             | View Student   </p>
            </div>
            <div>
  
            </div>           
        </div>     
        <div class="lienket">
            
            Group :
            <table border = "1px">
                <tr>
                    <c:forEach items="${requestScope.group}" var="g">
                       
                        <c:if test="${g.gid eq requestScope.id}">
                            <td>
                            <a href="student?id=${g.gid}">${g.gname}</a>
                            </td>   
                        </c:if>
                      
                        
                    </c:forEach>
                </tr>
            </table>       
        </div>
        

        <div class="aa">
            <form action="student" method="POST">     
                <input type="text" name="code" >
                <input type="hidden" name="id" value="${requestScope.id}">
                <input type="Submit" value="Search" class="bb">
            </form>   
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
                            <a  href="" > ${s.smember}</a>  
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
    </body>
</html>
