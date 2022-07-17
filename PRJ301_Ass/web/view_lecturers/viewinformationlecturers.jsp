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
                     <a href="mark?sid=${a.getLec().lid}">${a.getLec().lname}</a>                
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
            <div class="listBoxWrapper1">
            <h3 class="orangeTitle">Academic Information</h3>  
       </div>
            <div class="listBoxWrapper">
                
            <table>
                <tr>
                    <td>
                        <table>
                            <tbody>
                                <tr>
                                    <td valign="top" style="width: 55%;">
                                        
                                        <h4>Registration/Application(Thủ tục/đơn từ)</h4>
                                        <ul>
                                            <li><a href="FrontOffice/AddApplication.aspx?code=R1">Suspend one semester to take repeated course</a>&nbsp;|&nbsp; <a href="FrontOffice/RemoveApplication.aspx?code=R1">Cancel</a> (Xin tạm hoãn tiến độ một học kỳ
                                                để học lại | Hủy bỏ việc xin tạm hoãn)</li>
                                            <li><a href="FrontOffice/AddApplication.aspx?code=R2">Suspend one semester</a>&nbsp;|&nbsp;
                                                <a href="FrontOffice/RemoveApplication.aspx?code=R2">Cancel</a> (Xin tạm nghỉ một học kỳ | Hủy bỏ việc xin tạm nghỉ)</li>
                                            <li><a href="FrontOffice/Courses.aspx">Move out class </a>(Xin chuyển lớp)</li>
                                            <li><a href="FrontOffice/RegisterCourse.aspx?code=R3">Register extra courses</a> (Đăng ký môn học đi chậm kỳ)</li>
                                            <li><a href="FrontOffice/RegisterCourse.aspx?code=R4">Register to improve mark </a>&nbsp;(Đăng ký học cải thiện điểm)</li>
                                            <li><a href="FrontOffice/RegisterCourse.aspx?code=R5">Register to repeat a course</a> (Đăng ký học lại)</li>
                                            <li><a href="FrontOffice/RegisteredCourses.aspx">Cancel registration </a>(Hủy đăng ký học)</li>
                                            <li><a href="FrontOffice/RegisterElective.aspx">Register Free Elective Courses </a>(Đăng ký môn tự chọn)</li>
                                            <li><a href="App/SendAcad.aspx">Send Application</a> (Gửi đơn) |&nbsp; <a href="App/AcadAppView.aspx">View Application</a> (Xem đơn)</li>
                                            <li><a href="App/AddApp.aspx">Xin xác nhận sinh viên</a></li>
                                            <li><a href="FrontOffice/Shopping.aspx">Choose paid items (Lựa chọn các khoản nộp)</a> - <a href="Report/DngRequests.aspx">View</a></li>
                                            <li><a href="App/CourseChange.aspx">Yêu cầu đổi chéo lớp với sinh viên </a></li>

                                        </ul>
                                    </td>
                                    <td valign="top">
                                        <h4>Information Access(Tra cứu thông tin)</h4>
                                        <ul>

                                            <li><a href="Course/Courses.aspx">University timetable </a>(Lịch học)</li>
                                            <li><a href="FrontOffice/SubjectFees.aspx">Tuition fee per course</a> (Biểu học phí)</li>
                                            <li><a href="Report/ScheduleOfWeek.aspx">Weekly timetable</a> (Thời khóa biểu từng tuần)</li>
                                            <li><a href="">Blended Online Course (BLOC) Schedules </a>(Lịch học các môn theo phương pháp BLOC trong kỳ)</li>
                                            <li><a href="Schedule/TimeTable.aspx">Class timetable</a> (Xem thời khóa biểu của một lớp)</li>
                                            <li><a href="Exam/ScheduleExams.aspx" target="_blank">View exam schedule </a>(Xem lịch thi)
                                                <img src="images/New_icons_10.gif" id="ctl00_mainContent_imgIcon" /></li>
                                            <span id="ctl00_mainContent_lnkhocphi"></span>
                                            <li><a href="http://flm.fpt.edu.vn" target="_blank">View Syllabuses</a>(Xem đề cương môn học)</li>

                                            <li><a href="https://fap.fpt.edu.vn/temp/Regulations/Huong_dan_KTXH_tren_EduNext_Sp22_Sinh_Vien.pdf" target="_blank">EduNext student guideline</a><img src="images/New_icons_10.gif" id="ctl00_mainContent_img1" /></li>


                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <h4>Feedback(Ý kiến)</h4>
                                        <ul>
                                            <li><a href="Feedback/StudentFeedBack.aspx">Feedback about teaching</a> (Ý kiến về việc giảng dạy)</li>
                                        </ul>

                                    </td>
                                    <td valign="top">
                                        <h4>Reports(Báo cáo)</h4>
                                        <ul>
                                            <li><a href="Report/ViewAttendstudent.aspx">Attendance report</a> (Báo cáo điểm danh)</li>
                                            <li><a href="Grade/StudentGrade.aspx">Mark Report</a> (Báo cáo điểm)</li>
                                            <li><a href="Grade/StudentTranscript.aspx">Academic Transcript</a> (Báo cáo điểm)</li>
                                            <li><a href="FrontOffice/StudentCurriculum.aspx">Curriculum</a> (Khung chương trình)</li>
                                            <li><a href="Report/StudentFees.aspx">Student Fee</a> (Tra cứu học phí đã nộp theo kỳ)</li>
                                            <li><a href="Finance/TransReport.aspx">Transaction history</a> (Lịch sử giao dịch)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <h4>Others(Khác)</h4>
                                        <ul>

                                            <li><a href="User/Profile.aspx">Student Profile</a>| <a href="User/verProfile.aspx">Update Profile</a></li>

                                            <li><a href="Course/Terms.aspx">View semester</a>, <a href="Campus/Rooms.aspx">room</a> ( Xem thông tin về học kỳ, phòng)</li>
                                            <li><a href="SuFunix.aspx">Công nhận và chuyển đổi tín chỉ các học phần của Đại học trực tuyến (FUNiX)</a></li>

                                            <li><a href="FrontOffice/WishList.aspx">Danh sách các môn học lại chờ xếp lớp</a></li>
                                            <li><a href="Report/Awa.aspx">Các loại chứng chỉ</a></li>
                                            <li><a href="Report/PrintReportFinalS.aspx">Report điểm phong trào</a></li>


                                        </ul>
                                    </td>
                                    <td>
                                        <h4>Regulations(Các quy định)</h4>
                                        <ul>
                                            <li><a href="User/Regulations.aspx" target="_blank">Regulations...</a></li>
                                            <li><a href="https://fap.fpt.edu.vn/temp/Regulations/QD 272_new.pdf" target="_blank">Dormitory regulations (Nội quy KTX)</a></li>
                                        </ul>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <h4>Courses on FPTU-Coursera</h4>
                                        <ul>
                                            <li><a href="https://fap.fpt.edu.vn/temp/Regulations/FPTU-Coursera.pdf" target="_blank">Announcement</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="SRS/AddQA.aspx" target="_blank">Ask mentor</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="SRS/ViewQAS.aspx" target="_blank">View answer</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="https://insideuni.fpt.edu.vn/13" target="_blank">Submit certificates</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="https://fap.fpt.edu.vn/temp/Regulations/Coursera_certificates_submission_guidelines.pdf" target="_blank">Certificate submission guideline</a></li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div id="ctl00_mainContent_divKTX" class="row">
                                            <div class="panel-group">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Thông tin KTX </div>
                                                    <div class="panel-body">
                                                        <div id="ctl00_mainContent_divContent"><a href="https://ocd.fpt.edu.vn/">Thông tin KTX =>Hòa Lạc - On Campus Dormitory</a></div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <!--CMS News-->
                </tr>
            </table>
        </div>

    <div class="listBoxWrapper">
        <jsp:include page="../footer.jsp"></jsp:include>
    </div>
    
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
            margin-left:  10%;
            flex: 20%;
            display: flex;
            justify-content: center;
        }
         .listBoxWrapper1
        {
            margin-left: 10%;
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
</body>
</html>
