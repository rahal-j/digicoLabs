<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8"/>
    <title>Digico Labs| Registration </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%@include file="header_src.jsp" %>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="padTop53 ">

<!-- MAIN WRAPPER -->
<div id="wrap">


    <!-- HEADER SECTION -->
    <%@include file="header1.jsp" %>
    <!-- END HEADER SECTION -->


    <!-- MENU SECTION -->
    <%@include file="left1.jsp" %>

    <!--END MENU SECTION -->


    <!--PAGE CONTENT -->
    <div id="content">

        <div class="inner" style="min-height: 700px;">
            <ul class="breadcrumb" style="margin-top:2%;">
                <li><a href="/dashboard">Home</a></li>
                <li><a href="/user/insertPage">User Registration</a></li>
            </ul>
            <div class="row">


                <div class="col-lg-12">
                    <div class="box dark">
                        <header>
                            <div class="icons">
                                <i class="icon-glass"></i>
                            </div>
                            <h5>Enter User Details</h5>
                        </header>






                        <form id="userForm" class="form-horizontal" align="center"
                              novalidate>


                            </br>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">First Name</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="firstName" name="firstName"
                                               placeholder="Enter First Name" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Last Name</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="lastName" name="lastName"
                                               placeholder="Enter Last Name" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Email</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="email" name="email"
                                               placeholder="Email" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Address</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="address" name="address"
                                               placeholder="Enter Address" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Username</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="username" name="username"
                                               placeholder="Enter Username" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Password</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="password" id="password" name="password"
                                               placeholder="Enter Password" class="form-control"
                                              />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Re-Password</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="password" id="rePassword" name="rePassword"
                                               placeholder="Re Enter Password" class="form-control"
                                        />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">NIC</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="nic" name="nic"
                                               placeholder="Enter NIC" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label class="control-label col-md-5"
                                               style="float: right;">Contact No</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="telephone" name="telephone"
                                               placeholder="Enter Contact No" class="form-control"
                                               />
                                    </div>
                                </div>
                            </div>









                            <div class="row">
                                <div class="form-actions no-margin-bottom"
                                     style="text-align: center;">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <div>
                                            <input id="btn_save"
                                                   value="Save" class="btn btn-success btn-md " type="submit">
                                            <input id="btn_reset" value="Reset"
                                                   class="btn btn-warning btn-md " type="reset"/> <a
                                                class="btn btn-danger btn-md"
                                                href="/user/">Cancel</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


            </div>


        </div>

    </div>
    <!--END PAGE CONTENT -->


</div>

<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<%@include file="footer.jsp" %>
<!--END FOOTER -->

<%@include file="footer_src.jsp" %>

<script type="text/javascript">
    $(document).ready(function () {

        $("#username").val("");
        $(function() {
            formValidation();
        });
        $("#userForm").submit(
            function (e) {
                e.preventDefault();
                if (!$("#userForm").valid())
                    return false;
                var formData = getFormDataAsDTO("userForm");
                $.ajax({
                    type: "POST",
                    url: "/user/save",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: formData,
                    success: function (data) {
                        if (data.code == 'SUCCESS') {
                            swal(
                                {
                                    title: "Success Function!",
                                    text: data.message,
                                    type: "success",
                                    showCancelButton: false,
                                    confirmButtonColor: "#DD6B55",
                                    confirmButtonText: "OK!",
                                    closeOnConfirm: false
                                },
                                function () {
                                    window.location = "/";
                                });
                        } else {
                            swal(
                                "Data not saved!",
                                data.message,
                                "error");
                        }
                    }

                });

            });
    });


    function getFormDataAsDTO(formId) {
        var formElement = $('form#' + formId);
        var formData = new Object();
        var formDataArray = formElement.serializeArray();
        $.each(formDataArray, function (i, obj) {
            formData[obj.name] = obj.value;
        });
        return JSON.stringify(formData);
    }
</script>
</body>

<!-- END BODY -->
</html>
