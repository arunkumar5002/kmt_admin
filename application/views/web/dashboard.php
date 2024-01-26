<?php echo load_datatables(); ?>
<div class="content-wrapper">
    <section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Dashboard</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
						<li class="breadcrumb-item active">Dashboard</li>
					</ol>
				</div>
			</div>
		</div>
    </section>

    <section class="content">
		<div class="container-fluid">
			<?php if($this->session->userdata('user_emp')==1){ ?>
			<?php }else{ ?>
			<div class="row">
				<div class="col-lg-3 col-6">
					<div class="small-box bg-info">
						<div class="inner">
							<h3>150</h3>
							<p>New Leave Request</p>
						</div>
						  <div class="icon"><i class="ion ion-bag"></i></div>
						  <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-6">
					<div class="small-box bg-success">
						<div class="inner">
							<h3>53<sup style="font-size: 20px">%</sup></h3>
							<p>Attendance Rate</p>
						</div>
						<div class="icon"><i class="ion ion-stats-bars"></i></div>
						<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-6">
					<div class="small-box bg-warning">
						<div class="inner">
							<h3>44</h3><p>Employee</p>
						</div>
						<div class="icon"><i class="ion ion-person-add"></i></div>
						<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-6">
					<div class="small-box bg-danger">
						<div class="inner">
							<h3>65</h3>
							<p>Loan Request</p>
						</div>
						<div class="icon"><i class="ion ion-pie-graph"></i></div>
						<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<?php } ?>
        </div>
    </section>
</div>

<script>
$(document).ready(function(){
	$('#DataTable').DataTable();
});
</script>