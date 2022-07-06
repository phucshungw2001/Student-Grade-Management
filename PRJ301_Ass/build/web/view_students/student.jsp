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
    <body>
        <%
          int count = (Integer)request.getAttribute("count");
        %>

        <div class="e">
            <h2> University Academic Portal</h2>       
        </div>

        <div class="ee">
            <div>
                <p> <a href="subject">Home</a>
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
                            <a  href="mark?sid=4"> ${s.smember}</a>  
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

        <table width="100%" style="border: 1px solid transparent;" class="lienket">

            <tr>
                <td>
                    <div id="ctl00_divSupport">
                        <br />
                        <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@">dichvusinhvien@edu.vn</a>.
                        Điện thoại: <span class="style1"
                                          style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(+084) 0888888.86.86 </span>
                        <br />
                    </div>                                        
                </td>
            </tr>
            <tr>
                <td>
                    <p style="text-align: center">
                        © Powered by <a href="http://fpt.edu.vn" target="_blank">University</a>&nbsp;|&nbsp;
                        <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                        <span id="ctl00_lblHelpdesk"></span>
                    </p>
                </td>
            </tr>
        </table> 

    </body>
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
        p1{
            font-family: Times New Roman;
            font-size: 25px;
            color: black;
        }
        .cc{
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 25px;
            color: #776;
            margin-left: 3.7%;
            text-align: left;
        }
          .eee{
           margin-left: 80%;    
        }
    </style>
</html>
