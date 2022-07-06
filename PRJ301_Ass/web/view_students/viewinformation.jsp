<%-- 
    Document   : view
    Created on : Jun 11, 2022, 8:35:09 PM
    Author     : MyPC
--%>

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

    <style type="text/css">
        .style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <a href="../subject">Home home</a>  
    <a href="mark.jsp">Mark</a> 
    <div class="box" style="float: right; width: 60%">
        <h3 class="orangeTitle">Academic Information</h3>
        <div class="listBoxWrapper">
            <table>
                <tr>
                    <td>
                        <table>
                            <tbody>
                                <tr><td colspan="2">
                                        <br/>
                                        <input id="ctl00_mainContent_rdFCV" type="radio" name="ctl00$mainContent$rdFCV" value="rdFCV" onclick="javascript:setTimeout( & #39; __doPostBack(\ & #39; ctl00$mainContent$rdFCV\ & #39; , \ & #39; \ & #39; ) & #39; , 0)" /><label for="ctl00_mainContent_rdFCV"> Cập nhật tình trạng F0 (Có hiệu lực 7 ngày kể từ thời điểm đăng ký)</label>


                                        <span id="ctl00_mainContent_lblThongbao"></span>
                                        <br/>
                                        <div id="ctl00_mainContent_noteLuk">
                                            Sinh viên học LUK đăng ký học online vào theo link sau : <a href="https://bit.ly/K17P4HN-HocOnline" target="_blank">https://bit.ly/K17P4HN-HocOnline</a>
                                        </div>
                                    </td></tr>
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
                                            <li><a href="Schedule/FunixSchedule.aspx">Blended Online Course (BLOC) Schedules </a>(Lịch học các môn theo phương pháp BLOC trong kỳ)</li>
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
    </div>
</div>

<div id="ctl00_mainContent_divFed">
</div>
</div>

</div>
</td>
</tr>
<tr style="border-bottom: 0 none">
    <td>
        <br />

        <table width="100%" style="border: 1px solid transparent;" id="cssTable">

            <tr>
                <td>
                    <div id="ctl00_divSupport">
                        <br />
                        <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                        Điện thoại: <span class="style1"
                                          style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13 </span>
                        <br />

                    </div>




                </td>

            </tr>
            <tr>
                <td>
                    <p style="text-align: center">
                        © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                        <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                        <span id="ctl00_lblHelpdesk"></span>
                    </p>
                </td>
            </tr>
        </table>

    </td>
</tr>
</table>

</form>
</div>
</div>
</div>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-10421012-13']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();

</script>

<script type="text/javascript">
    var isClose = false;

    //this code will handle the F5 or Ctrl+F5 key
    //need to handle more cases like ctrl+R whose codes are not listed here
    document.onkeydown = checkKeycode;
    function checkKeycode(e) {
        var keycode;
        if (window.event)
            keycode = window.event.keyCode;
        else if (e)
            keycode = e.which;
        if (keycode == 116) {
            isClose = true;
        }
    }
    function somefunction() {
        isClose = true;
    }

    //<![CDATA[

    function bodyUnload() {

        if (!isClose) {
            var request = GetRequest();
            request.open("GET", "LogOut.aspx", true);
            request.send();
        }
    }
    function GetRequest() {
        var request = null;
        if (window.XMLHttpRequest) {
            //incase of IE7,FF, Opera and Safari browser
            request = new XMLHttpRequest();
        } else {
            //for old browser like IE 6.x and IE 5.x
            request = new ActiveXObject('MSXML2.XMLHTTP.3.0');
        }
        return request;
    }
    //]]>
</script>    
</body>
</html>
