<%-- 
    Document   : cashbook
    Created on : 19 Sep, 2016, 6:31:48 PM
    Author     : rocky_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="assets/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <meta charset="UTF-8">
        <title>///////////</title>   
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
        <script src="js/cashbook.js" type="text/javascript"></script>

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

                <!-- Button mobile view to collapse sidebar menu -->

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
                    <div class="page-heading">
                        <h1><i class='icon-plus-2'></i> <b>CASH BOOK</b></h1>
                    </div>
                    <!-- End right content -->
                    <form class="form-inline" name="saveCashBack" id="saveCashBack">
                        <input type="hidden" name="lorryId" id="lorryId" value="">
                        <input type="hidden" name="transportId" id="transportId" value="">
                        <input type="hidden" name="challanId" id="challanId" value="">
                        <div class="widget">
                            <div class="widget-content padding">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <div class="radio iradio">
                                            <label class="">
                                                <div aria-disabled="false" aria-checked="false" style="position: relative;" class="iradio_square-aero"><input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" name="cashbookPayMode" id="cashbookPayMode" value="1" checked="" type="radio"><ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper"></ins></div>
                                                AMOUNT RECEIVED
                                            </label>
                                        </div>
                                        <div class="radio iradio">
                                            <label class="">
                                                <div aria-disabled="false" aria-checked="false" style="position: relative;" class="iradio_square-aero"><input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" name="cashbookPayMode" id="cashbookPayMode" value="2" type="radio"><ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper"></ins></div>
                                                AMOUNT PAID
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-sm-4">
                                        <select class="form-control" id="cashBookTypeId" name="cashBookTypeId">
                                            <c:forEach items="${cashBookBeans}" var="cashBookBean" varStatus="loop">
                                                <option value="${cashBookBean.cashBookTypeId}">${cashBookBean.cashBookTypeName}</option>                       
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End right content -->
                        <!-- challan wala form -->

                        <div class="col-sm-6 portlets">
                            <div class="widget">
                                <div class="widget-content padding">
                                    <div class="form-group expenceType" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">EXPENSE TYPE:</label>
                                        <div class="col-lg-4">
                                            <select class="form-control" name="expenceType" id="expenceType">
                                                <option>SALARY</option>
                                                <option>CASH</option>
                                            </select>
                                        </div> 
                                        <div class=" col-lg-offset-1 col-lg-2">
                                            <button data-modal="md-slide-from-bottom" class="btn btn-default btn-sm md-trigger">ADD</button>
                                        </div>
                                    </div> 
                                    <br><br>
                                    <div class="form-group challanNo" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">CHALLAN NO:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER CHALLAN NUMBER" class="form-control" name="challanNo" id="challanNo" onblur="fetchChallanDetailsByChallanNo(this.value)">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group cashbookDate" style="display: none;">
                                        <label class="col-lg-5 control-label">DATE:</label>
                                        <div class="col-lg-7">
                                            <input type="text" class="form-control datepicker-input" data-mask="9999-99-99" placeholder="yyyy-mm-dd" name="cashbookDate" id="cashbookDate">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group lorryNo" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">LORRY NO:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER LORRY NUMBER" readonly="" class="form-control" value="" name="lorryNo" id="lorryNo">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group transportName" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">TRANSPORT NAME:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER TRANSPORT NUMBER" readonly="" class="form-control" value="" name="transportName" id="transportName">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group amount" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">AMOUNT:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER AMOUNT" class="form-control" name="amount" id="amount">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group mrp" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">MRP:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER MRP" class="form-control" id="mrp" name="mrp">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group cashBookAdvance" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">ADVANCE:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ADVANCE" class="form-control" id="cashBookAdvance" name="cashBookAdvance">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group balance" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">BALANCE:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="BALANCE" class="form-control" id="balance" name="balance">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group remarks" style="display: none;">
                                        <label for="inputEmail" class="col-lg-5 control-label">REMARKS:</label>
                                        <div class="col-lg-7">
                                            <input type="text" placeholder="ENTER AMOUNT" class="form-control" id="remarks" name="remarks">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group submit" style="display: none;">
                                        <input type="submit" name="submit" id="submit" value="SUBMIT" class="btn btn-default">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- challan wala form -->
                    <div class="col-sm-6 portlets">
                        <div class="widget green-2">
                            <div class="widget-header">
                                <h2><strong>DETAILS</strong></h2>
                            </div>
                            <div class="widget-content padding">
                                <P>CHALLAN DATE-12/15/2016</P>
                                <P>LORRY NO-WB24A1234</P>
                                <P>TRANSPORT NAME- GUJARAT ROADWAYS</P>
                                <P>BALANCE- RS 20000</P>
                                <P>ADVANCE- RS 20000</P>
                                <P>UNLOADING DATE</P>
                                <p>DIFFERENCE</p>
                                <P>DETAILS</P>						
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End content here -->
                <!-- ============================================================== -->

            </div>
        </div>
        <!-- End of page -->
        <!-- the overlay modal element -->
        <div class="md-overlay"></div>
        <!-- End of eoverlay modal -->

        <script>
            var resizefunc = [];
        </script>

        <!-- Modal slide from bottom -->
        <div class="md-modal md-slide-from-bottom" id="md-slide-from-bottom">
            <div class="md-content">
                <h3>Modal Dialog</h3>
                <div>
                    <p>This is a modal window. You can do the following things with it:</p>
                    <ul>
                        <li><strong>Read:</strong> modal windows will probably tell you something important so don't forget to read what they say.</li>
                        <li><strong>Look:</strong> a modal window enjoys a certain kind of attention; just look at it and appreciate its presence.</li>
                        <li><strong>Close:</strong> click on the button below to close the modal.</li>
                    </ul>
                    <p>
                        <button class="btn btn-danger md-close">Close me!</button>
                        <button class="btn btn-success md-close">Some button</button>
                    </p>
                </div>
            </div><!-- End div .md-content -->
        </div><!-- End div .md-modal .md-slide-from-bottom -->
        <script type="text/javascript">
            $(document).ready(function () {
                displayHideDiv($("#cashBookTypeId").val());
                $("#cashBookTypeId").change(function ()
                {
                    var cashBookTypeId = $(this).val();
                    displayHideDiv(cashBookTypeId);
                });
            });
            function displayHideDiv(cashBookTypeId) {
                var val = '';
            <c:forEach items="${cashBookBeans}" var="cashBookBean" varStatus="loop">
                if (cashBookTypeId === '${cashBookBean.cashBookTypeId}') {
                    val = '${cashBookBean.cashBookTypeName}';
                }
            </c:forEach>
                if (val === 'BALANCE' || val === 'ADVANCE' || val === 'COMMISION' || val === 'DIFFERENCE')
                {
                    $('.lorryNo').css("display", "block");
                    $('.transportName').css("display", "block");
                    $('.challanNo').css("display", "block");
                    $('.cashbookDate').css("display", "block");
                    $('.amount').css("display", "block");
                    $('.mrp').css("display", "none");
                    $('.balance').css("display", "none");
                    $('.remarks').css("display", "none");
                    $('.expenceType').css("display", "none");
                    $('.cashBookAdvance').css("display", "none");
                }
                else if (val === 'TYRE')
                {
                    $('.lorryNo').css("display", "block");
                    $('.transportName').css("display", "none");
                    $('.challanNo').css("display", "none");
                    $('.cashbookDate').css("display", "block");
                    $('.amount').css("display", "block");
                    $('.mrp').css("display", "block");
                    $('.balance').css("display", "block");
                    $('.remarks').css("display", "none");
                    $('.expenceType').css("display", "none");
                    $('.cashBookAdvance').css("display", "block");
                }
                else if (val === 'OFFICE')
                {
                    $('.lorryNo').css("display", "none");
                    $('.transportName').css("display", "none");
                    $('.challanNo').css("display", "none");
                    $('.cashbookDate').css("display", "block");
                    $('.amount').css("display", "block");
                    $('.mrp').css("display", "none");
                    $('.balance').css("display", "none");
                    $('.remarks').css("display", "block");
                    $('.expenceType').css("display", "block");
                    $('.cashBookAdvance').css("display", "none");
                }
                else if (val === 'CARD' || val === 'N.G' || val === 'HOUSE' || val === 'FARE' || val === 'OUTSTANDING' || val === 'B.C')
                {
                    $('.lorryNo').css("display", "none");
                    $('.transportName').css("display", "none");
                    $('.challanNo').css("display", "none");
                    $('.cashbookDate').css("display", "block");
                    $('.amount').css("display", "block");
                    $('.mrp').css("display", "none");
                    $('.balance').css("display", "none");
                    $('.remarks').css("display", "block");
                    $('.expenceType').css("display", "none");
                    $('.cashBookAdvance').css("display", "none");
                }
            }

        </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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

        <!-- Demo Specific JS Libraries -->
        <script src="assets/libs/prettify/prettify.js"></script>

        <script src="assets/js/init.js"></script>
        <!-- Page Specific JS Libraries -->
        <script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/libs/bootstrap-inputmask/inputmask.js"></script>
        <script src="assets/libs/summernote/summernote.js"></script>
        <script src="assets/js/pages/forms.js"></script>
    </body>
</html>

