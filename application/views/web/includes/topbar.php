<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center " style="background-color: #fff;">
    <img class="" src="<?php echo base_url(logo());?>" alt="AdminLTELogo">
	<!-- animation__shake -->
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fi fi-br-bars-sort"></i></a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
		<li class="nav-item dropdown">
			<a class="nav-link" data-toggle="dropdown" href="javascript:void(0)" aria-expanded="true">
				<i class="far fa-bell"></i>
				<!--<span class="badge badge-warning navbar-badge">15</span>-->
			</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="left: inherit; right: 0px;">
				<?php
					$result = get_employee_passport_notification(3);
					if(!empty($result)){
						foreach($result as $row){
							echo '<a href="javascript:void(0)" class="dropdown-item">';
								echo '<i class="fas fa-envelope mr-2"></i> '.$row['employeename'] .' - Passport';
								echo '<span class="float-right text-muted text-sm">'.date('d M Y',strtotime($row['passport_expiry_date'])).'</span>';
							echo '</a>';
							echo '<div class="dropdown-divider"></div>';
						}
					}
					
					$result = get_employee_rp_notification();
					if(!empty($result)){
						foreach($result as $row){
							echo '<a href="javascript:void(0)" class="dropdown-item">';
								echo '<i class="fas fa-envelope mr-2"></i> '.$row['employeename'] .' - RP';
								echo '<span class="float-right text-muted text-sm">'.date('d M Y',strtotime($row['rp_expiry_date'])).'</span>';
							echo '</a>';
							echo '<div class="dropdown-divider"></div>';
						}
					}
					
					$result = get_employee_crp_notification();
					if(!empty($result)){
						foreach($result as $row){
							echo '<a href="javascript:void(0)" class="dropdown-item">';
								echo '<i class="fas fa-envelope mr-2"></i> '.$row['employeename'] .' - CRP';
								echo '<span class="float-right text-muted text-sm">'.date('d M Y',strtotime($row['crp_expiry_date'])).'</span>';
							echo '</a>';
							echo '<div class="dropdown-divider"></div>';
						}
					}
				?>
				<a href="all_employee_notification" class="dropdown-item dropdown-footer">See All Notifications</a>
			</div>
		</li>
		<li class="nav-item">
			<a class="nav-link"  href="<?php echo base_url('logout');?>" title="Signout">
				<i class="fas fa-sign-out-alt"></i>
			</a>
		</li>
      
    </ul>
  </nav>
  <!-- /.navbar -->
