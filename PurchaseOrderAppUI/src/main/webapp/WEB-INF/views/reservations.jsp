<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>PO FUZE - Dashboard</title>
<!-- Custom fonts for this template-->
<link href="static/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="static/css/po-admin.min.css" rel="stylesheet">
<link rel="stylesheet" href="static/css/kendo.default-v2.min.css" />
<style>
.k-panelbar>.k-item>.k-link.k-state-selected {
	color: black;
	background-color: #f4f4f4;
}
.form-control{
     height: 2.2rem !important;
    padding: 0px !important;
  }
  /* tr.reserved,tr.k-alt.reserved {
        background-color: #f0fff0;
    } */
    tr.Unreserved,tr.k-alt.Unreserved{
    background-color: #f0fff0;
   /* background-color: #fff0f0 ; */
    }
    .box-styles{
    background:#f8f9fc;
    display:inline-block;
    padding-top:5px;
    padding-bottom:5px;
    margin:2px;
    }
    .card-header{
        padding: .2rem .25rem;
    margin-bottom: 0;
    background-color: #f8f9fc;
    border-bottom:#e3e6f0;
    }
    .list-group-item{
     padding: .2rem .25rem;
    }
    .no-padding{
        padding-right:0rem !important ;
    padding-left: 0rem !important;
    }
    .Header-content{
    padding: .2rem .25rem;
    background-color:#f8f9fc;
    border:2px solid #f8f9fc;
    color:#e74a3b;
    position:relative;
    }
   .field-height {
    height: 100px !important;
    }
    .rightButton{
    position: absolute;
    right: 0px;
    top: 0px;
}
    }
    
</style>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">

				<nav
					class="navbar navbar-expand navbar-light bg-white topbar  static-top shadow">

					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>


					<a
						class="sidebar-brand d-flex align-items-center justify-content-center"
						href="index"> <span class="sidebar-brand-icon rotate-n-15">
							<i class="fas fa-laugh-wink"></i>
					</span> <span class="sidebar-brand-text mx-3">FUZE Ginger</span>
					</a>


					<ul class="navbar-nav ml-auto">


						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a>

							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


						<!-- <li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> Counter - Alerts
								<span class="badge badge-danger badge-counter">3+</span>
						</a>

							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<span class="mr-3"> <span class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
									</span>
								</span> <span> <span class="small text-gray-500">December
											12, 2019</span> <span class="font-weight-bold">A new monthly
											report is ready to download!</span>
								</span>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<span class="mr-3"> <span class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
									</span>
								</span> <span> <span class="small text-gray-500">December
											7, 2019</span> $290.29 has been deposited into your account!
								</span>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<span class="mr-3"> <span class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
									</span>
								</span> <span> <span class="small text-gray-500">December
											2, 2019</span> Spending Alert: We've noticed unusually high spending
										for your account.
								</span>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li> -->

						<!-- <li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="POViewCart"> <i
								class="fa fa-cart-plus"></i> PO Cart <span
								class="badge badge-danger badge-counter">2</span>
						</a></li> -->

						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span class="mr-2 d-none d-lg-inline text-gray-600 small"><span id="username"></span></span>
								 <img class="img-profile rounded-circle"
								src="https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png">
						</a>

							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="logout" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>
				</nav>
				<nav
					class="navbar navbar-expand navbar-light topbar mb-4 mb-1  static-top">

					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>


					<!-- Topbar Navbar -->
					<ul class="navbar-nav">

						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${index}" href="index"
							id="alertsDropdown"> Home <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${PORequest}" href="PORequest"
							id="alertsDropdown"> PO Request <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>

						<%-- <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle ${POTracker}" href="POTracker" id="alertsDropdown">
                PO Tracker
              </a>
            </li> --%>

						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${classActiveSettings}" href="#"
							id="alertsDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> PO Fallout <!-- Counter - Alerts -->
								<!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>

						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${template}" href="templates"
							id="alertsDropdown"> PO Template <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="templates"
							id="alertsDropdown"> Service Contract Admin <!-- Counter - Alerts -->
								<!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${template}" href="templates"
							id="alertsDropdown"> Container <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle ${template}" href="templates"
							id="alertsDropdown"> User Info <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>

						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="reports"
							id="alertsDropdown"> Reports <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>

						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="reports"
							id="alertsDropdown"> Admin <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="reports"
							id="alertsDropdown"> Support <!-- Counter - Alerts --> <!-- <span class="badge badge-danger badge-counter">3+</span> -->
						</a> <!-- Dropdown - Alerts --></li>

					</ul>

				</nav>
				<!-- End of Topbar -->
				<div class="container-fluid">
				<span id="popupNotification" style="display:none;"></span>  
					<div class="row">
						<div class="card shadow mb-4" id="example">
							<div class="card-body demo-section k-content">
								<ul id="panelbar">
									<li id="myReservation">My Reservations
										<div class="row">
											<div class="col-sm-12">
												<div id="details"></div>
											</div>

										</div>
									</li>
									<li id="SiteProjectDetails">Container Search / Reserve
										<div class="padding-10">
											<div class="row">
												<div class="col-sm-12">

													<form class="user">
														<div class="form-group row">
															<div class="col-sm-3 mb-3 mb-sm-0">
																<label style="color: #e74a3b;">Teritory</label> <input
																	class="form-control" id="Teritory">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Markets</label> <input
																	class="form-control" id="Markets">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Sub Markets</label> <input
																	class="form-control" id="SubMarket">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Local Market</label> <input
																	class="form-control" id="LocalMarket">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Container Code</label> <input
																	class="form-control" id="containerCode">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Buyer</label> <input
																	class="form-control" id="buyer">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Project ID</label> <input
																	class="form-control" id="projectID">
															</div>
															<div class="col-sm-3">
																<label style="color: #e74a3b;">Search Key</label> <input
																	class="form-control" id="searchKeyId">
															</div>

															<div class="col-sm-3">
																<label style="width: 100%;">&nbsp;</label> <a href="#"
																	id="get"
																	class="btn btn-danger btn-user btn-block d-lg-inline">
																	Search </a> 

															</div>

														</div>
													</form>
													<div id="ReservDataList">
													<div id="grid"></div>
													</div>

												</div>
											</div>
										</div>
										
									</li>
									<li id="PORequestDetails">Container Details
										<div>
										<div id="grid1"></div>
											
										</div>
									</li>
									<li id="containerReserve">Container Reserve/ Un Reserve
										<div>
										
										<div class ="container-fluid">
										<div class="row">
										<div class="col-sm-12">
										 <div class="Header-content">
										<div class="d-inline">Reservation Details</div>
										<div class="d-inline text-right rightButton"><button class="btn btn-danger btn-user btn-block">Search</button></div>
										 
										 </div>
										 </div>
										</div>
										 <div class="row">
										
    <div class="col-sm box-styles">
     Container Code:<b id="containerCode"></b>
    </div>
    <div class="col-sm box-styles">
      Business Unit:
    </div>
    <div class="col-sm box-styles">
      Location Detail Code:
    </div>
     <div class="col-sm box-styles">
      Location Name:
    </div>
  </div>
  
  <div class="row">
  
 
  <div class="col-sm-4 no-padding">
  <div class="Header-content">Fuze Details</div>	
  <div class="card">
  										
									  <ul class="list-group list-group-flush">
									    <li class="list-group-item">Fuze Reservation id:<span class="bold" id="fuzeReservationId"></span></li>
									    <li class="list-group-item">Reservation Creation Date:<span  class="bold" id="reservationCreationDate"></span></li>
									   
									  </ul>
											</div>
											 <div class="Header-content">Reserve for:</div>
											 <div class="card">
  										
									  <ul class="list-group list-group-flush">
									    <li class="list-group-item">Reserve for:<span class="bold" id="reservedUsername"></span></li>
									    </ul>
									    </div>	
  </div>
    <div class="col-sm-8 no-padding">
    <div class="Header-content">Reuse Project Details</div>
    <div class="row">
    <div class="col-sm no-padding">
     <div class="card">
  											
									  <ul class="list-group list-group-flush">
									    <li class="list-group-item">Use At PS Location:</li>
									    <li class="list-group-item">USe At PS Project:<span class="bold" id="psproject"></span></li>
									    <li class="list-group-item">Use By Date:<span class="bold" id="useByDate"></span></li>
									    <li class="list-group-item">Fuze Project ID:<span id="fuzeProjectId" class="bold"></span></li>
									  </ul>
											</div>
    </div>
    <div class="col-sm no-padding">
    <div class="card">
  		<ul class="list-group list-group-flush">
									    <li class="list-group-item">PS Project Status: <span class="bold" id="fuzeStatus"></span></li>
									    <li class="list-group-item">PS Project effective Date:</li>
									    <li class="list-group-item">PS Project Description:</li>
									    <li class="list-group-item">PSLC Description:</li>
									  </ul>
	</div>
    </div>
    </div>
    <div class="Header-content">Reservation Bypass Details</div>
    <div class="row">
    <div class="col-sm no-padding">
    <div class="card">
  		<ul class="list-group list-group-flush">
									    <li class="list-group-item">Pass By Reason :</li>
									    </ul>
									    </div>
									    </div>
									    <div class="col-sm no-padding">
    <div class="card">
  		<ul class="list-group list-group-flush">
									    <li class="list-group-item">TUI Code:</li>
									    </ul>
									    </div>
									    </div>
    </div>
     </div>
 
  </div>
  
  <div class="row">
  <div class="col-sm-12">
  <div class="Header-content">ReservationNotes:</div>
  <div class="form-group">
  <textarea rows="2" cols="2" class="form-control" id="reservationNotes"></textarea>
  </div>
  </div>
  
  
  </div>
  
  
   <div class="row">
  <div class="col-sm-12">
  <div class="Header-content">Reservation Comments</div>
  <div class="form-group">
  <textarea rows="6" cols="2" class="form-control field-height" id="message"></textarea>
  </div>
  </div>
  
  
  </div>
   <div class="row">
  <div class="col-sm-12">
  <div class="text-right"><button class="btn btn-danger btn-user btn-block">Reserve</button></div>
  </div>
  
  
  </div>
  
		</div>	
			 
											
										</div>

									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; FUZE Ginger 2020</span>
						</div>
					</div>
				</footer>

				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>
			</div>
		</div>
	</div>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="logout">Logout</a>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="advancedSearch" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="advancedSearch">PO Request Data</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Search</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript-->
	<!-- <script src="vendor/jquery/jquery.min.js"></script> -->
	<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- <script	src="https://demos.telerik.com/kendo-ui/content/shared/js/console.js"></script> -->

	<!-- Custom scripts for all pages-->
	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/kendo.all.min.js"></script>
	<script src="static/js/reservation.js"></script>
	<script src="static/js/po-admin.min.js"></script>
	<script src="static/js/config.js"></script>
	<script type="text/javascript">
	var user = ${currentUserInfo};
    var currentUser=user? user.firstName+""+user.lastName : "";
	document.getElementById("username").innerHTML=currentUser;
	var popupNotification = $("#popupNotification").kendoNotification({
		 position: {
            pinned: true,
            top: 30,
            right: 30,
            appendTo: "#appendto"
        }
        }).data("kendoNotification");
  	$(document).ready(function() {
  		var baseUrl = appConfig.zuul_service;
		
		
		$("#myReservation").click(function() {
			myReservationDetails();
		})
		
		function myReservationDetails(){
	          var details=$("#details").kendoGrid({
				dataSource: {
			      transport: {
			         read: function (options) {
			        	 myReservationReadData(options);
			             },
			        parameterMap: function (options, operation) {
			        		if (operation !== "read" && options.models) {
			              		return { models: kendo.stringify(options.models) };
			              		}
			            	}
			          },
			        schema: {
			        	 model: {
	                         id: "id",
	                         fields: {
	                        	 containerCode : {type:"string"},
	                        	 MROrderCode: {type:"string"},
	                        	 MRSource: {type:"string"},
	                        	 fuzeReservationId: {type:"string"},
	                        	 fuzeProjectId: {type:"string"},
	                        	 projectName: {type:"string"},
	                        	 PSProject: {type:"string"},
	                        	 pslc: {type:"string"},
	                        	 reservedUsername: {type:"string"},
	                        	 useByDate: {type:"string"},
	                        	 reservationCreationDate: {type:"string"},
	                        	 fuzeStatus: {type:"string"},
	                        	 catsStatus: {type:"string"},
	                        	 territory: {type:"string"},
	                        	 market: {type:"string"},
	                        	 subMarket: {type:"string"},
	                        	 localMarket: {type:"string"},
	                        	 buyerId: {type:"string"},
	                        	 buyerName: {type:"string"},
	                         }
	                     }
			        },
			         pageSize: 10
			    },
			   sortable: true,
	            change: onChange,
			    pageable: true,
	            filterable: true,
			    resizable:true,
			   columns: [
			    	
	                { field:"containerCode", title:"Container Code", width: "100px"},
	                { field:"MROrderCode", title:"MR Order Code", width: "100px"},
	                { field:" MRSource",title:"MR Source", width: "100px"},
	                { field:" fuzeReservationId", title:"Fuze Reservation Id" , width: "150px"},
	                { field:" fuzeProjectId",title:"Fuze Project Id", width: "100px"},
	                { field:"projectName", title:"Project Name", width: "100px"},
	                { field:"PSProject", title:"PS Project", width: "100px"},
	                { field:" pslc",title:"PSLC", width: "100px"},
	                { field:" reservedUsername", title:"Reserved By", width: "100px"},
	                { field:" useByDate",title:"Use By Date", width: "100px"},						                
	                { field:"reservationCreationDate", title:"Reservation Creation Date", width: "150px"},
	                { field:"fuzeStatus", title:"Fuze Status", width: "100px"},
	                { field:" catsStatus",title:"Cats Status", width: "100px"},
	                { field:" territory", title:"Territory", width: "100px"},
	                { field:" market",title:"Market", width: "100px"},						                    
	                { field:"subMarket", title:"Sub Market", width: "100px"},
	                { field:"localMarket", title:"Local Market", width: "100px"},
	                { field:" buyerId",title:"Buyer Id", width: "100px"},
	                { field:" buyerName", title:"Buyer Name", width: "100px"},
	                
	                ]
	       
	       		});
      
         
		}
  		
  		function myReservationReadData(options){
  			var host_name = appConfig.zuul_service;
			console.log(host_name + '/por/reservation/container/reserved');
  			$.ajax({
	            type: "POST",
	            data: JSON.stringify(user),
	            contentType: "application/json; charset=utf-8",
	            cache: false,
	            url: host_name + '/por/reservation/container/reserved',
	            success: function(data){
	            	console.log(data);
	            	options.success(data);
	            },
	            error: function(jqXHR, textStatus, errorThrown){
	                console.log(errorThrown); 
	                options.error(errorThrown);
	            }
        	});
  			
  		}
  	})
  	
  	
  </script>
</body>
</html>