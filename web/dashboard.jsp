<%-- 
    Document   : dashboard
    Created on : 6 Sep, 2016, 5:26:27 PM
    Author     : rocky_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gujarat Roadways</title>   
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
                <link href="assets/libs/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/morrischart/morris.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-clock/clock.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/bootstrap-calendar/css/bic_calendar.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/sortable/sortable-theme-bootstrap.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-weather/simpleweather.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/bootstrap-xeditable/css/bootstrap-editable.css" rel="stylesheet" type="text/css" />
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
               <div id="sidebar-menu">
                    <ul><li class='has_sub'><a href="dashboard.jsp"><i class='icon-home-3'></i><span>Dashboard</span> <span class="pull-right"><i class="fa fa-angle-down"></i></span></a></li>
                        <li class='has_sub'><a href='javascript:void(0);'><i class='icon-feather'></i><span>ENTRY</span> <span class="pull-right"><i class="fa fa-angle-down"></i></span></a><ul><li><a href='alerts.html'><span>CREATE CHALLAN</span></a></ul></li>
                        <li class='has_sub'><a href='javascript:void(0);'><i class='icon-pencil-3'></i><span>REPORTS</span> <span class="pull-right"><i class="fa fa-angle-down"></i></span></a><ul><li><a href='forms.html'><span>Commision</span></a></li><li><a href='advanced-forms.html'><span>CARD</span></a></li><li><a href='form-wizard.html'><span>N.G</span></a></li><li><a href='form-validation.html'><span>BALANCE</span></a></li><li><a href='form-uploads.html'><span>ADVANCE</span></a></li><li><a href='form-uploads.html'><span>DIFFERENCE</span></a></li></ul></li>
                        <li class='has_sub'><a href='javascript:void(0);'><i class='fa fa-table'></i><span>PIE CHARTS</span> <span class="pull-right"><i class="fa fa-angle-down"></i></span></a><ul><li><a href='tables.html'><span>PROFIT/LOSS</span></a></li><li><a href='datatables.html'><span>EXPENSES</span></a></li></ul></li>
                        <li class='has_sub'><a href='javascript:void(0);'><i class='fa fa-map-marker'></i><span>MASTERS</span> <span class="pull-right"><i class="fa fa-angle-down"></i></span></a><ul><li><a href='google-maps.html'><span>******</span></a></li><li><a href='vector-maps.html'><span>******</span></a></li></ul></li>
                        
                    </ul>                    <div class="clearfix"></div>
                </div>
            <div class="clearfix"></div>
            <div class="portlets">
<!--                <div id="chat_groups" class="widget transparent nomargin">
                    <h2>Chat Groups</h2>
                    <div class="widget-content">
                        <ul class="list-unstyled">
                            <li><a href="javascript:;"><i class="fa fa-circle-o text-red-1"></i> Colleagues</a></li>
                            <li><a href="javascript:;"><i class="fa fa-circle-o text-blue-1"></i> Family</a></li>
                            <li><a href="javascript:;"><i class="fa fa-circle-o text-green-1"></i> Friends</a></li>
                        </ul>
                    </div>
                </div>-->

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
    <div class="right side-menu">
    	<ul class="nav nav-tabs nav-justified" id="right-tabs">
		  <li class="active"><a href="#feed" data-toggle="tab" title="Live Feed"><i class="icon-rss-2"></i></a></li>
		  <li><a href="#connect" data-toggle="tab" title="Chat"><i class="icon-chat"></i></a></li>
		  <li><a href="#settings" data-toggle="tab" title="Preferences"><i class="icon-wrench"></i></a></li>
		</ul>
		<div class="clearfix"></div>
		
    </div>
    <!-- Right Sidebar End -->		
		<!-- Start right content -->
        <div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Content here -->
			<!-- ============================================================== -->
            <div class="content">
				<!-- Start info box -->
				<div class="row top-summary">
					<div class="col-lg-3 col-md-6">
                                            <div class="widget green-1 animated fadeInDown" >
							<div class="widget-content padding">
								<div class="widget-icon">
									<i class="icon-book-open-1"></i>
								</div>
								<div class="text-box">
									<p class="maindata"> <b>CASH BOOK</b></p>
									<!--<h2><span class="animate-number" data-value="25153" data-duration="3000">0</span></h2>-->
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
                                                                            <i class="fa fa-caret-up rel-change"></i> <b>Includes all expenses</b>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="widget darkblue-2 animated fadeInDown" onclick="location.href='createchallan.jsp'">
							<div class="widget-content padding">
								<div class="widget-icon">
									<i class="icon-book-2"></i>
								</div>
								<div class="text-box">
									<p class="maindata"><b>CREATE CHALLAN</b></p>
									<!--<h2><span class="animate-number" data-value="6399" data-duration="3000">0</span></h2>-->

									<div class="clearfix"></div>
								</div>
							</div>
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa fa-caret-down rel-change"></i> <b>Create new Challans</b>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="widget orange-4 animated fadeInDown">
							<div class="widget-content padding">
								<div class="widget-icon">
									<i class="icon-archive"></i>
								</div>
								<div class="text-box">
									<p class="maindata"><b>EXPENSES</b></p>
									<!--<h2>$<span class="animate-number" data-value="70389" data-duration="3000">0</span></h2>-->
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa fa-caret-down rel-change"></i> <b>All expenses,eg-office,tyre,etc</b>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="widget lightblue-1 animated fadeInDown">
							<div class="widget-content padding">
								<div class="widget-icon">
									<i class="fa fa-users"></i>
								</div>
								<div class="text-box">
									<p class="maindata"><b>REPORTS</b></p>
									<!--<h2><span class="animate-number" data-value="18648" data-duration="3000">0</span></h2>-->
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa fa-caret-up rel-change"></i> <b>View all your reports</b>
									</div>
								</div>
								<div class="clearfix"></div>
                                                                
                                                                <div>
                                                                    
                                                                </div>
							</div>
						</div>
					</div>

				</div>
                                
				<!-- End of info box -->

				

				            <!-- Footer Start -->
            
            <!-- Footer End -->			
            </div>
              <div class="row">
					<div class="col-md-12 portlets">
						<!-- Your awesome content goes here -->
						<div class="widget animated fadeInDown">
							<form id="myWizard">
								<section class="step" data-step-title="AMOUNT RECEIVE">
                                                                    
									<div class="row">
										<div class="col-sm-6">
                                                                                     <div class="form-group">
							<label for="inputEmail">PAYMENT MODE:</label>
						<select class="form-control">
								  <option id="com">COMMISION</option>
                                                                   <option id="bal">BALANCE</option>
								  <option id="adv">ADVANCE</option>
                                                                  <option id="dif">DIFFERENCE</option>
								  <option>CARD</option>
								  <option>N.G</option>
                                                                  <option>FARE:</option>
                                                                  <option>B.C</option>
						</select>
											  </div>
											<div class="form-group">
												<label for="inputEmail">CHALLAN NO:</label>
												<input type="text" id="inputEmail" placeholder="ENTER CHALLAN NUMBER" class="form-control">
											</div>
                                                                                         <div class="form-group">
							                                        <label class="col-sm-2 control-label">DATE:</label>
							                                       
							                                         <input type="text" class="form-control datepicker-input" data-mask="9999-99-99" placeholder="yyyy-mm-dd">
							                                      
						                                            </div>
                                                                                    <div class="form-group">
												<label for="inputEmail">LORRY NO:</label>
												<input type="text" id="inputEmail" placeholder="ENTER LORRY NUMBER" class="form-control">
											</div>
                                                                                    <div class="form-group">
												<label for="inputEmail">TRANSPORT NAME:</label>
												<input type="text" id="inputEmail" placeholder="ENTER LORRY NUMBER" class="form-control">
											</div>
                                                                                   
                                                                                    <div class="form-group">
												<label for="inputEmail">AMOUNT:</label>
												<input type="text" id="inputEmail" placeholder="ENTER AMOUNT" class="form-control">
											</div>
											
                                                                                    <button type="submit" class="btn btn-default">Submit</button>

										</div>
										<div class="col-sm-6">
											<div class="notes">
                                                                                            <div class="widget green-2">
							<div class="widget-header">
								<h2><strong>CHALLAN</strong> DETAILS</h2>
								<div class="additional-btn">
									<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
									<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
									<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
								</div>
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
									</div>
                                                                  
								</section>
								<section class="step" data-step-title="AMOUNT PAID">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
                                                                                            
												<label for="inputEmail">CHALLAN NO:</label>
												<input type="text" id="inputEmail" placeholder="ENTER CHALLAN NUMBER" class="form-control">
											</div>
                                                                                         <div class="form-group">
							                                        <label class="col-sm-2 control-label">DATE:</label>
							                                       
							                                         <input type="text" class="form-control datepicker-input" data-mask="9999-99-99" placeholder="yyyy-mm-dd">
							                                      
						                                            </div>
                                                                                    <div class="form-group">
												<label for="inputEmail">LORRY NO:</label>
												<input type="text" id="inputEmail" placeholder="ENTER LORRY NUMBER" class="form-control">
											</div>
                                                                                    <div class="form-group">
												<label for="inputEmail">TRANSPORT NAME:</label>
												<input type="text" id="inputEmail" placeholder="ENTER LORRY NUMBER" class="form-control">
											</div>
                                                                                    <div class="form-group">
							<label for="inputEmail">PAYMENT MODE:</label>
							
								<select class="form-control">
								  <option>COMMISION</option>
								  <option>CARD</option>
								  <option>N.G</option>
								  <option>BALANCE</option>
								  <option>ADVANCE</option>
                                                                  <option>FARE:</option>
                                                                  <option>B.C</option>
                                                                  <option>DIFFERENCE</option>
                                                                  
								</select>
											  </div>
                                                                                    <div class="form-group">
												<label for="inputEmail">AMOUNT:</label>
												<input type="text" id="inputEmail" placeholder="ENTER AMOUNT" class="form-control">
											</div>
											
                                                                                    <button type="submit" class="btn btn-default">Submit</button>

										</div>
										<div class="col-sm-6">
											<div class="notes">
                                                                                            <div class="widget green-2">
							<div class="widget-header">
								<h2><strong>CHALLAN</strong> DETAILS</h2>
								<div class="additional-btn">
									<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
									<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
									<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
								</div>
							</div>
							<div class="widget-content padding">
                                                            <P>CHALLAN DATE-12/15/2016</P>
                                                            <P>LORRY NO-WB24A1234</P>
                                                            <P>TRANSPORT NAME-GUJRAT ROADWAYS</P>
                                                            <P>BALANCE-RS 20000</P>
                                                            <P>ADVANCE-RS 20000</P>
                                                            <P>UNLOADING DATE</P>
                                                            <P>DETAILS</P>
                                                            
                                                            
							</div>
						</div>
												
											</div>
										</div>
									</div>
								</section>
								<section class="step" data-step-title="OFFICE EXPENSE">
									<div class="row">
										<div class="col-sm-6">
                                                                                    <div class="form-group">
							<label for="inputEmail">EXPENSE TYPE:</label><button data-modal="md-slide-from-bottom" class="btn btn-default btn-sm md-trigger">ADD</button>

							
								<select class="form-control">
								  <option>SALARY</option>
                                                                  <option>GENERAL</option>
								  
                                                                  
								</select>
											  </div>
                                                                                    <div class="form-group">
							                                        <label class="col-sm-2 control-label">DATE:</label>
							                                       
							                                         <input type="text" class="form-control datepicker-input" data-mask="9999-99-99" placeholder="yyyy-mm-dd">
							                                      
						                                            </div>
                                                                                    
                                                                                    
                                                                                    
											<div class="form-group">
												<label for="inputFirstname">AMOUNT</label>
												<input type="text" id="inputFirstname" placeholder="AMOUNT" class="form-control">
											</div>
											<div class="form-group">
												<label for="inputCity">REMARKS</label>
												<input type="text" id="inputCity" placeholder="REMARKS" class="form-control">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="notes">
												<h4><strong>Example</strong> note</h4>
												
											</div>
										</div>
									</div>
								</section>
                                                            <section class="step" data-step-title="OTHER EXPENSES">
									<div class="row">
										<div class="col-sm-6">
                                                                                    <div class="form-group">
							<label for="inputEmail">EXPENSE TYPE:</label>
							
								<select class="form-control">
								  
                                                                  <option>B.C</option>
                                                                  <option>DIFFERENCE</option>
                                                                  <option>Outstanding</option>
                                                                  <option>Tyre</option>
                                                                  <option>House</option>
                                                                  
								</select>
											  </div>
											<div class="form-group">
												<label for="inputFirstname">AMOUNT</label>
												<input type="text" id="inputFirstname" placeholder="Firstname" class="form-control">
											</div>
											<div class="form-group">
												<label for="inputCity">REMARKS:</label>
												<input type="text" id="inputCity" placeholder="City" class="form-control">
											</div>
                                                                                    <button type="submit" class="btn btn-default">Submit</button>
										</div>
										<div class="col-sm-6">
											<div class="notes">
												<h4><strong>Example</strong> note</h4>
												
												
											</div>
										</div>
									</div>
								</section>
                                                            
							</form>
						</div>
					</div>
				</div>          
			

        </div>
                
		<!-- End right content -->

	</div>
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

	<div id="contextMenu" class="dropdown clearfix">
		    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
		        <li><a tabindex="-1" href="javascript:;" data-priority="high"><i class="fa fa-circle-o text-red-1"></i> High Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="medium"><i class="fa fa-circle-o text-orange-3"></i> Medium Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="low"><i class="fa fa-circle-o text-yellow-1"></i> Low Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="none"><i class="fa fa-circle-o text-lightblue-1"></i> None</a></li>
		    </ul>
		</div>
	<!-- End of page -->
		<!-- the overlay modal element -->
	<div class="md-overlay"></div>
	<!-- End of eoverlay modal -->
	<script>
		var resizefunc = [];
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
	<script src="assets/libs/d3/d3.v3.js"></script>
	<script src="assets/libs/rickshaw/rickshaw.min.js"></script>
	<script src="assets/libs/raphael/raphael-min.js"></script>
	<script src="assets/libs/morrischart/morris.min.js"></script>
	<script src="assets/libs/jquery-knob/jquery.knob.js"></script>
	<script src="assets/libs/jquery-jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="assets/libs/jquery-jvectormap/js/jquery-jvectormap-us-aea-en.js"></script>
	<script src="assets/libs/jquery-clock/clock.js"></script>
	<script src="assets/libs/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="assets/libs/jquery-weather/jquery.simpleWeather-2.6.min.js"></script>
	<script src="assets/libs/bootstrap-xeditable/js/bootstrap-editable.min.js"></script>
	<script src="assets/libs/bootstrap-calendar/js/bic_calendar.min.js"></script>
	<script src="assets/js/apps/calculator.js"></script>
	<script src="assets/js/apps/todo.js"></script>
	<script src="assets/js/apps/notes.js"></script>
	<script src="assets/js/pages/index.js"></script>
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
	<script src="assets/libs/jquery-wizard/jquery.easyWizard.js"></script>
	<script src="assets/js/pages/form-wizard.js"></script>
        
        
	</body>
</html>
