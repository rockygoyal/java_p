<%-- 
    Document   : createchallan
    Created on : 6 Sep, 2016, 11:19:15 PM
    Author     : rocky_000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Forms | Coco - Responsive Bootstrap Admin Template</title>   
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="description" content="">
        <meta name="keywords" content="coco bootstrap template, coco admin, bootstrap,admin template, bootstrap admin,">
        <meta name="author" content="Huban Creative">

        <!-- Base Css Files -->
        <link href="assets/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/libs/fontello/css/fontello.css" rel="stylesheet" />
        <link href="assets/libs/animate-css/animate.min.css" rel="stylesheet" />
        <link href="assets/libs/nifty-modal/css/component.css" rel="stylesheet" />
        <link href="assets/libs/magnific-popup/magnific-popup.css" rel="stylesheet" /> 
        <link href="assets/libs/ios7-switch/ios7-switch.css" rel="stylesheet" /> 
        <link href="assets/libs/pace/pace.css" rel="stylesheet" />
        <link href="assets/libs/sortable/sortable-theme-bootstrap.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
        <link href="assets/libs/jquery-icheck/skins/all.css" rel="stylesheet" />
        <!-- Code Highlighter for Demo -->
        <link href="assets/libs/prettify/github.css" rel="stylesheet" />

        <!-- Extra CSS Libraries Start -->
        <link href="assets/libs/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/summernote/summernote.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <!-- Extra CSS Libraries End -->
        <link href="assets/css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="assets/img/favicon.ico">
        <link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png" />
        <link rel="apple-touch-icon" sizes="57x57" href="assets/img/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="assets/img/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-touch-icon-76x76.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="assets/img/apple-touch-icon-114x114.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="assets/img/apple-touch-icon-120x120.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="assets/img/apple-touch-icon-144x144.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="assets/img/apple-touch-icon-152x152.png" />
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="js/challan.js" type="text/javascript"></script>
    </head>
    <body class="fixed-left">
        <!-- Modal Start -->
        <!-- Modal Task Progress -->	
        <div class="md-modal md-3d-flip-vertical" id="task-progress">
            <div class="md-content">
                <h3><strong>Task Progress</strong> Information</h3>
                <div>
                    <p>CLEANING BUGS</p>
                    <div class="progress progress-xs for-modal">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="sr-only">80&#37; Complete</span>
                        </div>
                    </div>
                    <p>POSTING SOME STUFF</p>
                    <div class="progress progress-xs for-modal">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                            <span class="sr-only">65&#37; Complete</span>
                        </div>
                    </div>
                    <p>BACKUP DATA FROM SERVER</p>
                    <div class="progress progress-xs for-modal">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                            <span class="sr-only">95&#37; Complete</span>
                        </div>
                    </div>
                    <p>RE-DESIGNING WEB APPLICATION</p>
                    <div class="progress progress-xs for-modal">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                            <span class="sr-only">100&#37; Complete</span>
                        </div>
                    </div>
                    <p class="text-center">
                        <button class="btn btn-danger btn-sm md-close">Close</button>
                    </p>
                </div>
            </div>
        </div>

        <!-- Modal Logout -->
        <div class="md-modal md-just-me" id="logout-modal">
            <div class="md-content">
                <h3><strong>Logout</strong> Confirmation</h3>
                <div>
                    <p class="text-center">Are you sure want to logout from this awesome system?</p>
                    <p class="text-center">
                        <button class="btn btn-danger md-close">Nope!</button>
                        <a href="login.html" class="btn btn-success md-close">Yeah, I'm sure</a>
                    </p>
                </div>
            </div>
        </div>        <!-- Modal End -->	
        <div class="md-modal md-slide-stick-top" id="form-modal">
            <div class="md-content">
                <div class="md-close-btn"><a class="md-close"><i class="fa fa-times"></i></a></div>
                <h3><strong>Form</strong> Modal</h3>
                <div>
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Login</h4>
                            <form role="form">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-default">Login</button>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <h4>Not a member?</h4>
                            <p>Create account <a href="#fakelink">here</a></p>
                            <p>OR</p>

                            <button type="button" class="btn btn-primary btn-sm btn-block btn-facebook"><i class="fa fa-facebook"></i> Login with Facebook</button>
                            <button type="button" class="btn btn-primary btn-sm btn-block btn-twitter"><i class="fa fa-twitter"></i> Login with Twitter</button>

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End .md-modal -->	
        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">
                <div class="topbar-left">
                    <div class="logo">
                        <h1><a href="#"><img src="assets/img/logo.png" alt="Logo"></a></h1>
                    </div>
                    <button class="button-menu-mobile open-left">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
            </div>
            <!-- Top Bar End -->
            <!-- Left Sidebar Start -->
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!-- Search form -->
                    <form role="search" class="navbar-form">
                        <div class="form-group">
                            <input type="text" placeholder="Search" class="form-control">
                            <button type="submit" class="btn search-button"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                    <div class="clearfix"></div>
                    <!--- Profile -->
                    <div class="profile-info">
                        <div class="col-xs-4">
                            <a href="profile.html" class="rounded-image profile-image"><img src="images/users/user-100.jpg"></a>
                        </div>
                        <div class="col-xs-8">
                            <div class="profile-text">GUJARAT <b>ROADWAYS</b></div>

                        </div>
                    </div>
                    <!--- Divider -->
                    <div class="clearfix"></div>
                    <hr class="divider" />
                    <div class="clearfix"></div>
                    <!--- Divider -->
                    <%@include file="menu.jsp" %>
                    <div class="clearfix"></div>
                    <div class="portlets">

                        <div id="recent_tickets" class="widget transparent nomargin">
                            <h2>Recent Tickets</h2>
                            <div class="widget-content">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="javascript:;">My wordpress blog is broken <span>I was trying to save my page and...</span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">Server down, need help!<span>My server is not responding for the last...</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div><br><br><br>
                </div>
                <div class="left-footer">
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-green-1" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="progress-precentage">80%</span>
                        </div>

                        <a data-toggle="tooltip" title="See task progress" class="btn btn-default md-trigger" data-modal="task-progress"><i class="fa fa-inbox"></i></a>
                    </div>
                </div>
            </div>
            <!-- Left Sidebar End -->		    <!-- Right Sidebar Start -->

            <!-- Right Sidebar End -->		
            <!-- Start right content -->
            <div class="content-page">
                <!-- ============================================================== -->
                <!-- Start Content here -->
                <!-- ============================================================== -->
                <div class="content">
                    <!-- Page Heading Start -->
                    <div class="page-heading">
                        <h1><i class='icon-plus-2'></i> <b>CREATE CHALLAN</b></h1>
                    </div>
                    <!-- Page Heading End-->	

                    <!-- Your awesome content goes here -->

                    <div class="widget">
                        <div class="widget-header transparent">
                            <h2><strong>Form</strong> Element</h2>
                            <div class="additional-btn">
                                <a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
                                <a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
                                <a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
                            </div>
                        </div>
                        <div class="widget-content padding">
                            <form class="form-horizontal" role="form" action="" id="saveChallan" name="saveChallan">
                                <input type="hidden" name="reqType" id="reqType" value="saveChallan">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">DATE:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control datepicker-input" data-mask="9999-99-99" placeholder="yyyy-mm-dd" name="challanDate" id="challanDate">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">LORRY NO:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="LORRY NO" name="lorryNo" id="lorryNo">
                                        <div id="selection" class="required"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">TRANSPORT NAME:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="TRANSPORT NAME" name="transportName" id="transportName">
                                        <div id="selection" class="required"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">LOADING ADDRESS:</label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line1" name="loadingAddLine1" id="loadingAddLine1" >
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line2" name="loadingAddLine2" id="loadingAddLine2">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line 3" name="loadingAddLine3" id="loadingAddLine3">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">UNLOADING ADDRESS:</label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line1" name="unloadingAddLine1" id="unloadingAddLine1">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line2" name="unloadingAddLine2" id="unloadingAddLine2">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Address line 3" name="unloadingAddLine3" id="unloadingAddLine3">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">PHONE NO. OF LORRY DRIVER/OWNER:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="PHONE NO. OF LORRY DRIVER/OWNER" name="phoneNumberOfLorryDriverOrOwner" id="phoneNumberOfLorryDriverOrOwner">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">DETAILS:</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <input type="text" class="form-control" placeholder="WEIGHT" name="lorryWeight" id="lorryWeight">
                                            </div>
                                            <div class="col-xs-3">
                                                <input type="text" class="form-control" placeholder="RATE" name="lorryRate" id="lorryRate">
                                            </div>
                                            <div class="col-xs-4">
                                                <input type="text" class="form-control" placeholder="EMPO" name="lorryEmpo" id="lorryEmpo">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">TOTAL FREIGHT:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="TOTAL FREIGHT:" name="totalFreight" id="totalFreight">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">ACC NO. OF LORRY OWNER:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="ACC NO. OF LORRY OWNER" name="accNoOfLorryOwner" id="accNoOfLorryOwner">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">ADVANCE:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="ADVANCE" name="advance" id="advance">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="input-text" class="col-sm-2 control-label">TO PAY:</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="input-text" placeholder="TO PAY" name="toPay" id="toPay">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">RC BOOK PHOTO:</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="btn btn-default" title="Select file" name="rcBookPic" id="rcBookPic">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">DRIVING LICENCE PHOTO:</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="btn btn-default" title="Select file" name="drivingLicensePic" id="drivingLicensePic">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-default" value="SUBMIT" style="align-content: center" name="drivingLicensePic" id="drivingLicensePic">
                                </div>


                            </form>
                        </div>

                    </div>
                    <!-- End of your awesome content -->

                    <!-- Footer Start -->

                    <!-- Footer End -->			
                </div>
                <!-- ============================================================== -->
                <!-- End content here -->
                <!-- ============================================================== -->

            </div>
            <!-- End right content -->

        </div>
        <!-- End of page -->
        <!-- the overlay modal element -->
        <div class="md-overlay"></div>
        <!-- End of eoverlay modal -->
        <script>
            var resizefunc = [];
        </script>
        <script src="assets/libs/jquery/jquery-1.11.1.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/libs/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="assets/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js"></script>
        <script src="assets/libs/jquery-detectmobile/detect.js"></script>
        <script src="assets/libs/jquery-animate-numbers/jquery.animateNumbers.js"></script>
        <script src="assets/libs/ios7-switch/ios7.switch.js"></script>
        <script src="assets/libs/fastclick/fastclick.js"></script>
        <script src="assets/libs/jquery-blockui/jquery.blockUI.js"></script>
        <script src="assets/libs/bootstrap-bootbox/bootbox.min.js"></script>
        <script src="assets/libs/jquery-slimscroll/jquery.slimscroll.js"></script>
        <script src="assets/libs/jquery-sparkline/jquery-sparkline.js"></script>
        <script src="assets/libs/nifty-modal/js/classie.js"></script>
        <script src="assets/libs/nifty-modal/js/modalEffects.js"></script>
        <script src="assets/libs/sortable/sortable.min.js"></script>
        <script src="assets/libs/bootstrap-fileinput/bootstrap.file-input.js"></script>
        <script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/libs/bootstrap-select2/select2.min.js"></script>
        <script src="assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script> 
        <script src="assets/libs/pace/pace.min.js"></script>
        <script src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="assets/libs/jquery-icheck/icheck.min.js"></script>

        <script src="assets/libs/prettify/prettify.js"></script>

        <script src="assets/js/init.js"></script>
        <script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/libs/bootstrap-inputmask/inputmask.js"></script>
        <script src="assets/libs/summernote/summernote.js"></script>
        <script src="assets/js/pages/forms.js"></script>
    </body>
</html>
