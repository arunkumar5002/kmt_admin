<?php echo load_datatables(); ?>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row" style="margin-bottom:1.5rem!important;">
                <div class="col-sm-6">
                    <h1>Attendance Report</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">HR</a></li>
                        <li class="breadcrumb-item active"><a href="<?= base_url() . 'view_attendance_report' ?>">
                                Attendance Report</a></li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="row" style="align-items: center;margin:30px 25px 30px 19px">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <input type="text" value="<?php echo $month; ?>" placeholder="Attendance Month"
                                    id="attendance_month" name="attendance_month" class="datepicker form-control"
                                    required>

                            </div>
                            <div class="col-md-8 col-sm-3 col-xs-3" style="text-align:end;">
							<input type="button" onclick="printDiv('printableArea')" value="Print Attendance" rel="noopener"
                                    target="_blank" class="btn btn-success">
									
							<input type="button" class='DTTT_button btn btn-info pdfAttendance'value="Get PDF"><i class="fa fa-file-pdf-o"></i>
                            </div>

                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">

                            <div id="printableArea">
                                <div class="x_panel">

                                    <div class="x_content" style="margin-left: 8px;margin-right:10px" ;>

                                        <div class="clearfix"></div>
                                        <style>
                                            .leave {
                                                color: #fff;
                                                background-color: (255, 8, 8);
                                            }

                                            .present {
                                                color: #fff;
                                                background-color: ;
                                            }

                                            .halfday {
                                                color: #fff;
                                                background-color: (252, 255, 8);
                                            }

                                            .ml {
                                                color: #fff;
                                                background-color: rgb(7, 150, 189);
                                            }

                                            .pl {
                                                color: #fff;
                                                background-color: #600808;
                                            }

                                            .lop {
                                                color: #fff;
                                                background-color: rgb(189, 7, 123);
                                            }

                                            .table {
                                                border-radius: 10px;
                                            }

                                            .table>thead>tr>th,
                                            .table>tbody>tr>th,
                                            .table>tfoot>tr>th,
                                            .table>thead>tr>td,
                                            .table>tbody>tr>td,
                                            .table>tfoot>tr>td {
                                                border: 1px solid #ddd !important;
                                                padding: 10px 7px 7px 7px;
                                                line-height: 1.5;
                                                font-size: 15px !important;
                                            }

                                            .emp__name {
                                                min-width: 300px;
                                                width: fit-content;
                                            }

                                            .table>thead>tr>td {
                                                font-weight: 900 !important;
                                            }

                                            .sticky__item {
                                                position: sticky;
                                                left: 0;
                                                background-color: #fff;
                                                border-style: solid;
                                                border-right-color: rgba(201, 76, 76, 0.3);
                                            }

                                            .sticky__item--name {
                                                left: 30px;
                                                position: sticky;
                                                background-color: #fff;
                                            }

                                            .card__box {
                                                display: flex;
                                                gap: 11px;

                                                justify-content: center;
                                                padding: 15px;
                                            }

                                            .card__box i {
                                                font-weight: 900 !important;
                                            }

                                            .card__box span {
                                                font-size: 18px;
                                                font-weight: 500 !important;
                                            }
                                        </style>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card__box">
                                                            <i class="fi fi-br-check"
                                                                style=" font-size: 18px;color: #1dd323; font-weight:900;"></i>
                                                            <span>Present</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card__box">
                                                            <i class="fi fi-br-cross-small"
                                                                style=" font-size: 18px;color: #c7341a; font-weight:900;"></i>
                                                            <span>Absent</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card">
                                                        <div class="card__box">
                                                            <i class="fi fi-rr-folder-xmark"
                                                                style=" font-size: 18px;color: #b1b1b1; font-weight:900;"></i>
                                                            <span style="color:#b1b1b1;">No record</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="container-fluid">
                                            <div class="table-responsive" style="overflow-x:auto">
                                                <table id="example" class="table table-striped responsive-utilities">
                                                    <thead>
                                                        <tr class="headings">
                                                            <td colspan="2" class="sticky__item">Date</td>
                                                            <?php for ($i = 1; $i <= $days; $i++) { ?>
                                                                <td>
                                                                    <?php echo $i; ?>
                                                                </td>
                                                            <?php } ?>
															<th rowspan="2"> Absent </th>
                                                        </tr>
                                                        <tr class="headings">
                                                            <td colspan="2" style=" font-size: 13px;"
                                                                class="sticky__item">Day</td>
                                                            <?php for ($i = 1; $i <= $days; $i++) {
                                                                $date = $year . "-" . $mon . "-" . $i;
                                                                $d = date("D", strtotime($date));
                                                                ?>
                                                                <td style=" font-size: 13px;">
                                                                    <?php echo substr($d, 0, -2); ?>
                                                                </td>
                                                            <?php } ?>
                                                        </tr>

                                                    </thead>

                                                    <tbody>
                                                        <?php
/* $presentTotal = 0; */
                                                        $absentTotal = 0;
$halfabsentTotal = 0;
 ?>
                                                        <?php $i = 1;
                                                        if ($employee) {
                                                            foreach ($employee as $emp) {
                                                               /* $presentTotal = 0;*/
                                                                $absentTotal = 0;
																$halfabsentTotal = 0;
                                                                ?>
                                                                <tr>
                                                                    <td style=" font-size: 13px;" class="sticky__item">
                                                                        <?php echo $i; ?>
                                                                    </td>
                                                                    <td style=" font-size: 10px;"
                                                                        class="emp__name sticky__item--name">
                                                                        <?php echo $emp->employeename; ?>
                                                                    </td>
                                                                    <?php for ($j = 1; $j <= $days; $j++) {
                                                                        $day = $j;

                                                                        $monthName = date('M', mktime(0, 0, 0, $mon, 10));

                                                                        $attend_month_year = sprintf("%02d", $day) . "-" . $monthName . "-" . $year;

                                                                        $get_emp_attendance = get_emp_attendance($emp->emp_id, $attend_month_year);

                                                                        //if(!empty($get_emp_attendance)){	 
                                                                        //foreach($get_emp_attendance as $atten){ 
                                                                        $class = "";
                                                                        $value = "";

                                                                        if (isset($get_emp_attendance->attend_status)) {
                                                                            if ($get_emp_attendance->attend_status == 'Present' || $get_emp_attendance->attend_status == 'WeeklyOff Present') {
                                                                                $class = "Present";
                                                                                $value = '<i style=" font-size: 10px;color: #1dd323;" class="fas fa-check" ></i>';
                                                                                /* $presentTotal++; */
                                                                            } else if ($get_emp_attendance->attend_status == 'Absent') {
                                                                                $class = "Absent";
                                                                                $value = '<i style=" font-size: 10px;color: #c7341a;" class="fas fa-times" ></i>';
                                                                                $absentTotal++;
                                                                            } else if ($get_emp_attendance->attend_status == '½Present') {

                                                                                if ($get_emp_attendance->attend_in_time >= '12:00') {
                                                                                    $class = "attend_in_time";
                                                                                    $value = '<i style=" font-size: 10px;color: #c7341a;" class="fas fa-times" </i></br><i class="far fa-horizontal-rule"></i><i style=" font-size: 10px;color: #1dd323;" class="fas fa-check" </i>';
                                                                                } else if ($get_emp_attendance->attend_in_time <= '12:00') {
                                                                                    $class = "attend_in_time";
                                                                                    $value = '<i style=" font-size: 10px;color: #1dd323;" class="fas fa-check" </i></br><i class="far fa-horizontal-rule"></i><i style=" font-size: 10px;color: #c7341a;" class="fas fa-times" </i>';
                                                                                }
                  $halfabsentTotal++;

                                                                            }
                                                                            echo "<td class='" . $class . "'>" . $value . "</td>";
                                                                        } else {
                                                                            echo '<td style=" font-size: 10px; min-width:35px!important;">-</td>';
                                                                        }
                                                                        //}  } else{ echo "<td>-</td>";  }
                                                                    }
                                                                    ?>
                                                                   <!-- <td>
                                                                       <?php echo $presentTotal; ?> Days
                                                                    </td> --> 
                                                                    <td>
                                                                        <?php echo $absentTotal + $halfabsentTotal; ?>
                                                                    </td>
                                                                </tr>
                                                                <?php $i++;
                                                            }
                                                        } ?>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <br />
                        <br />
                        <br />

                    </div>
                </div>
            </div>

        </div>
</div>
</section>
</div>
<style>
    .ui-datepicker-calendar {
        display: none;
    }
</style> <!-- Datatables -->
<script src="<?php echo base_url() ?>site/admin/js/datatables/js/jquery.dataTables.js"></script>
<script src="<?php echo base_url() ?>site/admin/js/datatables/tools/js/dataTables.tableTools.js"></script>
<script>
    $(document).ready(function () {

        $('input.tableflat').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });
    });

    var asInitVals = new Array();
    $(document).ready(function () {
        /* var oTable = $('#example').dataTable({
             "oLanguage": {
                 "sSearch": "Search all columns:"
             },
             "aoColumnDefs": [
                 {
                     'bSortable': false,
                     'aTargets': [0]
                 }
     ],
             'iDisplayLength': 10,
             "sPaginationType": "full_numbers",
             "dom": 'T<"clear">lfrtip'
         });*/
        $(".datepicker").datepicker({
            changeMonth: true,
            changeYear: true,
            showButtonPanel: true,
            dateFormat: 'mm-yy',
            onClose: function (dateText, inst) {
                $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
                window.location.href = "<?php echo base_url() ?>Attendance/attendance_master/" + $("#attendance_month").val();
            }
        });



    });



    $(".pdfAttendance").click(function () {
        window.location.href = '<?php echo base_url() . "Attendance/pdfAttendance/" . $year . "/" . $mon; ?>';
    });



</script>

<script type="text/javascript">
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>