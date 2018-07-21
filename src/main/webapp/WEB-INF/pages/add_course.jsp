<%--
  Created by IntelliJ IDEA.
  User: ziyunzhong
  Date: 2018-07-15
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Add Court</title>

    <link href="http://protostrap.com/Assets/gv/css/gv.bootstrap-form.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../css/toggle-menu.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div>

    <div class="wrapper">
        <!-- Page Content Holder -->
        <div id="content">

            <div class="table-content parent">
                <div class="table-content" id="course_table">
                    <div class="row" >
                        <h2 class="text-center">Course Table</h2>
                        <button type="button" class="btn btn-primary add-button" name="add_course" data-toggle="modal" data-target="#addCourseModal">Add a course</button>

                    </div>
                    <div class="row">
                        <div id="no-more-tables1" class="admin-table">
                            <table class="col-sm-12 table table-bordered table-striped table-condensed cf">
                                <thead class="cf">
                                <tr>
                                    <th>Course Name</th>
                                    <th>Capacity</th>
                                    <th>Course Start</th>
                                    <th>Course End</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${courseList}" var="course">
                                    <tr>
                                        <td>${course.course_name}</td>
                                        <td>${course.course_category}</td>
                                        <td>${course.course_start_date}</td>
                                        <td>${course.course_end_date}</td>
                                        <td >
                                            <a onclick="editcourse(this)" class="btn btn-default" value=${course.course_id}>
                                                <i class="material-icons">border_color</i>
                                            </a>
                                        </td>
                                        <td >
                                            <a onclick="deletecourse(this)" class="btn btn-danger" data-toggle="modal" href="#myModal" value=${course.course_id}>
                                                <em class="fa fa-trash">
                                                </em>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!-- Modal -->
    <div class="modal fade" id="addCourseModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Course</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form id = "add-course-form" class="form-horizontal" action="/action_page.php" method="post">
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="course_name">Course Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="course_name" placeholder="Enter course name" name="course_name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="capacity">Capacity</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="capacity" placeholder="capacity" name="capacity" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="course_start">Course Start</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="course_start"  name="course_start" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="course_end">Course End</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="course_end"  name="course_end" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6">Course Day</label>
                            <div class="col-sm-10" id="course_day">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="course_day_1" value=1>
                                    <label class="form-check-label" for="course_day_1">1</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="course_day_2" value=2>
                                    <label class="form-check-label" for="course_day_2">2</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="course_day_3" value=3>
                                    <label class="form-check-label" for="course_day_3">3</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="course_day_4" value=4>
                                    <label class="form-check-label" for="course_day_4">4</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="course_day_5" value=5>
                                    <label class="form-check-label" for="course_day_5">5</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="course_time_start">Course time start</label>
                            <div class="col-sm-10">
                                <input type="time" class="form-control" id="course_time_start" name="course_time_start" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="course_time_end">Course time end</label>
                            <div class="col-sm-10">
                                <input type="time" class="form-control" id="course_time_end"  name="course_time_end" required>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn-primary" id="submit-course-form">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>

        </div>
    </div>

</div>

<div id="popup"><div role="dialog" tabindex="-1" class="modal fade" id="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Are you sure to delete?</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p class="text-center text-muted">Deleted court can not be recovered.</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button><button id="deletecourse" value="" class="btn btn-primary" type="button">Delete</button></div>
        </div>
    </div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- jQuery CDN - Slim version (=without AJAX) -->
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
            $(this).toggleClass('active');
        });
    });
    // pass value to modal
    function deletecourse(element) {
        var courseid = element.getAttribute('value');
        $("#deletecourse").val(courseid);
    };

    $("#deletecourse").click(function(){
        //get id
        var courseid = $("#deletecourse").val();
        $.ajax({
            url:"/course/"+courseid,
            type: 'GET',
            success: function (data, status){
                if(status == "success"){
                    location.reload();
                };
            }
        })
    });

    // edit course
    function editcourse(element) {
        var courseid = element.getAttribute('value');
        alert("course id is: " + courseid);
    };

    $("#submit-course-form").click(function () {
        var course_name = $("#course_name").val();
        var capacity = $("#capacity").val();
        var course_start = $("#course_start").val();
        var course_end = $("#course_end").val();
        var course_time_start = $("#course_time_start").val();
        var course_time_end = $("#course_time_end").val();
        var course_day_1 = document.getElementById("course_day_1").checked;
        var course_day_2 = document.getElementById("course_day_2").checked;
        var course_day_3 = document.getElementById("course_day_3").checked;
        var course_day_4 = document.getElementById("course_day_4").checked;
        var course_day_5 = document.getElementById("course_day_5").checked;
        if ( course_name=="" || capacity=="" || course_start=="" || course_end=="" || course_time_start=="" || course_time_end=="") {
            if (course_day_1==false && course_day_2==false || course_day_3==false || course_day_3==false || course_day_4==false || course_day_5==false) {
                alert("Can not have empty value")
            }
        } else {
            $('#addCourseModal').modal('toggle');
            bootbox.alert("Successfully Added");
//            pass json object, all form value here
            $.post ("a.php",{
                    name : course_name,
                    capacity: capacity
//              More variable here
                },
                function (data, status) {
                    window.location.href="";
                });
        }
    });
    $(".btn.btn-danger.delete").click(function (s) {
        s.preventDefault()
        bootbox.confirm({
            message: "Are you sure",
            buttons: {
                confirm: {
                    label: 'Yes',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'No',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {
                if (result == true) {
                    bootbox.alert("Successfully Delete");
                }
//                console.log('This was logged in the callback: ' + result);
            }
        });  });
</script>

</body>

</html>