<?php $menu_user_id = $this->session->userdata('user_id'); ?>


<style>
	.nav-item .nav-link{
		display: flex !important;
		gap: 10px;
    align-items: center !important;
	}
	.sidebar{
		padding-top:10px;
	}
</style>
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color:#fff !important;">
    <!-- Brand Logo -->
    <a href="<?=base_url().'dashboard' ?>" class="brand-link" style="text-align:center;background:#fff; border-bottom:none;">
		<img src="<?php echo base_url(logo());?>" alt="AdminLTE Logo" class="" style="opacity: .8; width: 57px; height: 100%;">
    </a>

    <!-- Sidebar -->
    <div class="sidebar" style="background-color:#0e3d70; border-top-right-radius: 20px; border-top-left-radius: 20px;">
      <!-- Sidebar user panel (optional) -->
		
		<?php if($this->session->userdata('user_emp')==1){ ?>
			<?php $user_details = $this->session->userdata('user_details'); ?>
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="<?= base_url().'uploads/employee_profile/'.$user_details->profile_image ?>" class="img-circle elevation-2" alt="User Image">
				</div>
				<div class="info">
					<a href="#" class="d-block"><?= $user_details->employeename ?></a>
				</div>
			</div>
		<?php } ?>
     
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
		          <li class="nav-item">
						<a href="<?=base_url().'dashboard' ?>" class="nav-link">
						<i class="fi fi-rr-apps"></i>
							<p>Dashboard</p>
						</a>
					</li>


	<?php
		$val = get_role_permission_list(1);
		if(!empty($val)){
	?>
	<li class="nav-item">
		<a href="#" class="nav-link">
			<i class="fas fa-users"></i>
			<p>HR</p>
			<i class="right fas fa-angle-left"></i>
		</a>
		
            <li class="nav-item">
                <a href="<?= base_url().'employee_master' ?>" class="nav-link ">
					<i class="far fa-user nav-icon"></i>
					<p>Employee Master</p>
                </a>
            </li>
			
            <li class="nav-item">
                <a href="<?= base_url().'attendance' ?>" class="nav-link">
					<i class="far fa-user nav-icon"></i>
					<p>Attendance Master</p>
                </a>
            </li>
			<li class="nav-item">
				<a href="<?= base_url().'view_attendance_report' ?>" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p> Attendance List</p>
				</a>
			</li>
			
			
			<!-- <li class="nav-item">
				<a href="<?php echo base_url()?>Hr/salary_master" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Salary Master</p>
				</a>
			</li> -->
			
			<li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/payslip_generator" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Payslip Generator</p>
				</a>
			</li>
			<!-- <li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/levy_master" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Levy Master </p>
				</a>
			</li> -->
			<li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/salary_slip" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Salary Slip </p>
				</a>
			</li>
			<li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/pay_rol" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p> Payroll </p>
				</a>
			</li>
			<li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/salary_sheet" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Salary Sheet </p>
				</a>
			</li>
			<!--<li class="nav-item">
				<a href="<?php echo base_url() ?>Hr/leave_category" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Leave category </p>
				</a>
			</li>-->
			<!--<li class="nav-item">
                <a href="<?php echo base_url() ?>Hr/leave_management_list" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Leave Management </p>
                </a>
            </li>-->
			<li class="nav-item">
               <a href="<?php echo base_url() ?>Perfomance/employee_perform_list" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p>Employee Performance </p>
                </a>
            </li>
			
			<li class="nav-item">
               <a href="<?php echo base_url() ?>Hr/holidays" class="nav-link">
					<i class="far fa-circle nav-icon"></i>
					<p> Holidays  </p>
                </a>
            </li>
		
	</li>
	<?php } ?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>