<%-- 
    Document   : view
    Created on : Jun 11, 2022, 8:35:09 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </title><link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" /><link rel="Stylesheet" href="fu.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery-ui.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery.alerts.css" type="text/css" />

    <script src="../JavaScript/jquery.min.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery_002.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery_003.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery-ui.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery.alerts.js" type="text/javascript"></script>

    <link rel="Stylesheet" href="Content/bootstrap.css" type="text/css" /><link rel="Stylesheet" href="Content/bootstrap.min.css" type="text/css" /><link rel="Stylesheet" href="Content/bootstrap-theme.min.css" type="text/css" />

</head>
<body>

    <div class="e">
        <h2> University Academic Portal</h2>       
    </div>

    <div class="ee">
        <div>
            <p>
                <c:forEach items="${sessionScope.account}" var="a">
                    <a href="${a.getLec().lid}">${a.getLec().lname}</a>                
                </c:forEach>              
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
    <div class="listBoxWrapper">

                    <table>
                        <tbody>
                            <tr>
                                <td valign="top" style="width: 55%;">

                                    <h4>Timetable</h4>
                                    <ul>
                                        <li> <c:forEach items="${sessionScope.account}" var="a">
                                                <a href="lecturerssubjects?lid=${a.getLec().lid}">Submit mark of student</a>                
                                        </c:forEach>  </li>
                                        
                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1"></a></li>
                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1"></a></li>
                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1"></a></li>
                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1"></a></li>
                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1"></a></li>
                                      
                                    </ul>
                                </td>
                                <td valign="top">
                                    <h4>Attendance</h4>
                                    <ul>

                                        <li><a href="Course/Courses.aspx">Take attendance for today </a>&nbsp;</li>
                                        <li><a href="FrontOffice/SubjectFees.aspx">See report on student attendance</a>&nbsp;</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <h4>Students</h4>
                                    <ul>
                                        <li><a href="Feedback/StudentFeedBack.aspx">Student groups</a></li>
                                        <li><a href="Feedback/StudentFeedBack.aspx">Search student grade</a></li>
                                        <form>
                                            Enter roll number of student's name <br/>
                                            <input> 
                                            <input type="submit" value="Search">
                                        </form>
                                        
                                    </ul>

                                </td>
                                <td valign="top">
                                    <h4>Others</h4>
                                    <ul>
                                        <li><a href="Report/ViewAttendstudent.aspx">EduNext teacher guideline</a> </li>
                                        <li><a href="Grade/StudentGrade.aspx">EduNext student guideline</a> </li>
                                        <li><a href="Grade/StudentTranscript.aspx">Download grading tool (FUGE)</a></li>
                                        <li><a href="FrontOffice/StudentCurriculum.aspx">FUGE User Guide</a> </li>
                                        <li><a href="Report/StudentFees.aspx">Student Fee</a></li>
                                        <li><a href="Finance/TransReport.aspx">Transaction history</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
    </div>


    <div class="listBoxWrapper">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
</body>

<style type="text/css">
    .style1 {
        font-weight: bold;
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
        margin-left: 78%;
    }
    p{
        font-size: 15px;
        width: 150px;
    }
    .listBoxWrapper a{
        text-decoration: none
    }
    .listBoxWrapper
    {
        flex: 30%;
        display: flex;
        justify-content: center;
       
    }
    .listBoxWrapper1
    {
        margin-left: 0%;
        flex: 20%;
        display: flex;
        justify-content: center;

    }
    .lienket{
        flex: 20%;
        display: flex;
        justify-content: center;
    }
    h3{
        background-color: #ef8d01;
        padding: 7px;
        border-radius: 5px;
        color: white;
    }
</style>
</html>
