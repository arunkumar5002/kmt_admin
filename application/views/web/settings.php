<style>
	a span{
		color:black;
	}
	.info-box-number{
		font-size: 18px;
		text-align: right;
	}
</style>

<div class="content-wrapper">
	<section class="content-header">
		<div class="container-fluid mb_22">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Settings</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="http://localhost/inx/dashboard">Home</a></li>
						<li class="breadcrumb-item active">Settings</li>
					</ol>
				</div>
			</div>
		</div>
    </section>
	
	<section class="content-header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<a href="<?= base_url().'department_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-success"><i class="far fa-building"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Department Master</span>
								<!--<span class="info-box-number">2</span>-->
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="<?= base_url().'designation_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-warning"><i class="far fa-building"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Designation Master</span>
								<!--<span class="info-box-number">1</span>-->
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="<?= base_url().'gst_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-danger"><i class="fas fa-money-check-alt"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">GST Master</span>
								<!--<span class="info-box-number">0</span>-->
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<a href="<?= base_url().'attendance_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-info"><i class="fas fa-book"></i></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Attendance Master</span>
								<!--<span class="info-box-number">1</span>-->
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="<?= base_url().'salary_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-success"><i class="fas fa-rupee-sign"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Salary Master</span>
								<!--<span class="info-box-number">2</span>-->
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="<?= base_url().'shift_timing_master' ?>">
						<div class="info-box">
							<span class="info-box-icon bg-warning"><i class="fas fa-clock"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Shift Timing Master</span>
								<!--<span class="info-box-number">0</span>-->
							</div>
						</div>
					</a>
				</div>
			</div>
        </div>
	</section>
</div>