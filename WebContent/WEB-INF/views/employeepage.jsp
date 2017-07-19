<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashen Bank HR</title>

    <!-- Bootstrap core CSS -->
    <spring:url value="/resources/css/bootstrap.min.css" var="boostrapCss" htmlEscape="true"/>
    <!-- Bootstrap core CSS -->
    <link href="${boostrapCss}" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <spring:url value="/resources/css/navbar.css" var="navBar" htmlEscape="true"/>
    <!-- Bootstrap core CSS -->
    <link href="${navBar}" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <spring:url value="/resources/css/custom.min.css" var="customeCss" htmlEscape="true"/>
    <!-- Bootstrap core CSS -->
    <link href="${customeCss}" rel="stylesheet">
</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Human Resource System</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">DashBoard</a></li>
                <li><a href="#about">Report</a></li>
                <li><a href="#contact">Admin</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More.. <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">EmployeeView</a></li>
                        <li><a href="#">Employee</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<!-- Begin page content -->
<div class="container">
    <div class="page-header">
        <h1>Welcome to Dashen Bank HR system - Employee Registration Page</h1>
    </div>

    <div class="container">
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info" >
                <div class="panel-heading">
                    <div class="panel-title">Employee Registration</div>

                </div>

                <div style="padding-top:30px" class="panel-body" >

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
<!--form-->
                    <strong>Success Message:${msg}</strong>

                    <spring:url value="/employeeSave" var="employeeSaveAction" />
                    <form method="post" action="${employeeSaveAction}" id="emp_reg_form" class="form-horizontal" role="form" >


                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="fname" type="text" class="form-control" name="fname" value="" placeholder="First Name">
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="mname" type="text" class="form-control" name="mname" value="" placeholder="Middle Name">
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="lname" type="text" class="form-control" name="lname" value="" placeholder="Last Name">
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="fileIndexNumber" type="text" class="form-control" name="fileIndexNumber" value="" placeholder="File Index Number">
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="hr_employeeId" type="text" class="form-control" name="hr_employeeId" value="" placeholder="Employee Id">
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <label class="radio-inline">
                                <input name="radioGroup" id="radio1" value="male" type="radio"> Male
                            </label>
                            <label class="radio-inline">
                                <input name="radioGroup" id="radio2" value="female" type="radio"> Female
                            </label>
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="dateOfBirth" type="date" class="form-control" name="dateOfBirth" value="" placeholder="Date Of Birth">
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="dateOfEmployment" type="date" class="form-control" name="dateOfEmployment" value="" placeholder="Date Of Employment">
                        </div>


                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <select class="selectpicker" name="jobClassification">
                                <option value="1">Clerical</option>
                                <option value="2" >Non-Clerical</option>
                                <option value="3">Technical</option>
                            </select>
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <textarea id="EmergencyContact"  class="form-control" name="EmergencyContact" value="" placeholder="Emergency Contact Address"></textarea>
                        </div>

                            <div class="panel panel-default">
                                <div class="panel-heading"><strong>Upload Files</strong> <small>Bootstrap files upload</small></div>
                                <div class="panel-body">

                                    <!-- Standar Form -->
                                    <h4>Select files from your computer</h4>
                                    <!--<form action="" method="post" enctype="multipart/form-data" id="js-upload-form">

                                        <div class="form-inline">
                                            <div class="form-group">
                                                <input type="file" name="files[]" id="js-upload-files" multiple>
                                            </div>
                                            <button type="submit" class="btn btn-sm btn-primary" id="js-upload-submit">Upload files</button>
                                        </div>
                                    </form>-->

                                </div>
                            </div>



                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <input type="submit" id="btn-login" href="#" class="btn btn-success" value="Save"/>
                                <input type="reset" id="btn-fblogin" href="#" class="btn btn-primary" value="Reset"/>

                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                    Don't have an account!
                                    <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                        Sign Up Here
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form>



                </div>
            </div>
        </div>
    </div>


</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<spring:url value="/resources/vendors/jquery/dist/jquery.min.js" var="JqueryMin" htmlEscape="true"/>
<script src="${JqueryMin}"></script>
<!-- Bootstrap -->
<spring:url value="/resources/vendors/bootstrap/dist/js/bootstrap.min.js" var="BootstrapMin" htmlEscape="true"/>
<script src="${BootstrapMin}"></script>

<!-- Bootstrap -->
<spring:url value="/resources/js/upload.js" var="Upload" htmlEscape="true"/>
<script src="${Upload}"></script>
</body>
</html>
