<!DOCTYPE html>
<html>

    <?php
    session_start();

    if( !isset($_SESSION['role']) ){
        $_SESSION['role'] = 'Resident';
        $_SESSION['resident'] = 1;
        $_SESSION['userid'] = 20;
        $_SESSION['username'] = 'qqq';

    }


    if( !isset($_SESSION['role']) )
    {
        header("Location: ../../login.php"); 
    }
    else
    {
    ob_start();
    include('../head_css.php'); ?>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <?php 
        
        include "../connection.php";
        ?>
        <?php include('../header.php'); ?>

        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <?php include('../sidebar-left.php'); ?>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Cedulla
                    </h1>
                    
                </section>

                <!-- Main content -->
                <section class="content">

                    <?php
                    // if(($_SESSION['role'] == "Administrator") || isset($_SESSION['staff']))
                    if(($_SESSION['role'] == "Administrator") || $_SESSION['role'] == "Resident")
                    {
                    ?>

                    <div class="row">
                        <!-- left column -->
                            <div class="box">
                                <div class="box-header">
                                    <div style="padding:10px;">
                                        
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addModal"><i class="fa fa-user-plus" aria-hidden="true"></i> Add Permit</button>  
                                        <?php 
                                            if(!isset($_SESSION['staff']))
                                            {
                                        ?>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button> 
                                        <?php
                                            }
                                        ?>
                                
                                    </div>                                
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                <ul class="nav nav-tabs" id="myTab">
                                      <li class="active"><a data-target="#approved" data-toggle="tab">Approved</a></li>
                                      <li><a data-target="#disapproved" data-toggle="tab">Disapproved</a></li>
                                </ul>
                                <form method="post">
                                
                                <div class="tab-content">
                                    <div id="approved" class="tab-pane active in">
                                        <table id="table" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <?php 
                                                    // if(!isset($_SESSION['staff']))
                                                    // {
                                                    ?>
                                                    <th style="width: 20px !important;"><input type="checkbox" name="chk_delete[]" class="cbxMain" onchange="checkMain(this)"/></th>
                                                    <?php
                                                        // }
                                                    ?>
                                                    <th>Resident Id</th>
                                                    <th>Address</th>

                                                    <th>Civil Status</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php

                                                if(!isset($_SESSION['staff']))
                                                {
                                                    // $squery = mysqli_query($con, "SELECT *,CONCAT(r.lname, ', ' ,r.fname, ' ' ,r.mname) as residentname,p.id as pid FROM tblpermit p left join tblresident r on r.id = p.residentid where status = 'Approved'") or die('Error: ' . mysqli_error($con));
                                                    $squery = mysqli_query($con, "SELECT * FROM tblcedula") or die('Error: ' . mysqli_error($con));

                                                    while($row = mysqli_fetch_array($squery))
                                                    {

                                                        if($row['Status'] == "APPROVED" ){

                                                            echo '
                                                                <tr>
                                                                    <td><input type="checkbox" name="chk_delete[]" class="chk_delete" value="'.$row['id'].'" /></td>
                                                                    <td>'.$row['ResidentId'].'</td>
                                                                    <td>'.$row['Address'].'</td>
                                                                    <td>'.$row['CivilStatus'].'</td>
                                                                    <td>'.$row['Status'].'</td>
                
                                                                    <td><button class="btn btn-primary btn-sm" data-target="#editModal'.$row['id'].'" data-toggle="modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></td>
                                                                </tr>
                                                                ';

                                                        }
                                                    

                                                        include "edit_modal.php";
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div id="disapproved" class="tab-pane">
                                        <table id="table1" class="table table-bordered table-striped">
                                        <thead>
                                                <tr>
                                                    <?php 
                                                    if(!isset($_SESSION['staff']))
                                                    {
                                                    ?>
                                                    <th style="width: 20px !important;"><input type="checkbox" name="chk_delete[]" class="cbxMain" onchange="checkMain(this)"/></th>
                                                    <?php
                                                        }
                                                    ?>
                                                    <th>Resident Id</th>
                                                    <th>Address</th>

                                                    <th>Civil Status</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php

                                                if(!isset($_SESSION['staff']))
                                                {
                                                    // $squery = mysqli_query($con, "SELECT *,CONCAT(r.lname, ', ' ,r.fname, ' ' ,r.mname) as residentname,p.id as pid FROM tblpermit p left join tblresident r on r.id = p.residentid where status = 'Approved'") or die('Error: ' . mysqli_error($con));
                                                    $squery = mysqli_query($con, "SELECT * FROM tblcedula") or die('Error: ' . mysqli_error($con));

                                                    while($row = mysqli_fetch_array($squery))
                                                    {

                                                        if($row['Status'] != "APPROVED" ){

                                                            echo '
                                                                <script>
                                                                    console.log('.json_encode($row).')
                                                                </script>

                                                                <tr>
                                                                    <td><input type="checkbox" name="chk_delete[]" class="chk_delete" value="'.$row['id'].'" /></td>
                                                                    <td>'.$row['ResidentId'].'</td>
                                                                    <td>'.$row['Address'].'</td>
                                                                    <td>'.$row['CivilStatus'].'</td>
                                                                    <td>'.$row['Status'].'</td>
                
                                                                    <td><button class="btn btn-primary btn-sm" data-target="#editModal'.$row['id'].'" data-toggle="modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></td>
                                                                </tr>
                                                                ';

                                                        }
                                                        include "edit_modal.php";
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>


                                    </div>

                                    <?php include "../deleteModal.php"; ?>

                                    </form>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->

                            <?php include "../edit_notif.php"; ?>

                            <?php include "../added_notif.php"; ?>

                            <?php include "../delete_notif.php"; ?>

                            <?php include "add_modal.php"; ?>

                            <?php include "function.php"; ?>


                    </div>   <!-- /.row -->

                    <?php
                    }
                    elseif($_SESSION['role'] == "Zone Leader")
                    {
                    ?>

                    <div class="row">
                        <!-- left column -->
                            <div class="box">
                                <div class="box-header">
                                                               
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                
                                <form method="post">
                                
                               
                                    <table id="table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 20px !important;"><input type="checkbox" name="chk_delete[]" class="cbxMain" onchange="checkMain(this)"/></th>
                                                <th>Resident</th>
                                                <th>Address</th>
                                                <th>Brithplace</th>
                                                <th>Status</th>
                                                <th style="width: 25% !important;">Option</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $squery = mysqli_query($con, "SELECT * from tblcedula") or die('Error: ' . mysqli_error($con));
                                            while($row = mysqli_fetch_array($squery))
                                            {
                                                if($row['Status']!="APPROVED"){

                                                    echo '
                                                    <tr>
                                                        <td><input type="checkbox" name="chk_delete[]" class="chk_delete" value="'.$row['id'].'" /></td>
                                                        <td>'.$row['ResidentId'].'</td>
                                                        <td>'.$row['Address'].'</td>
                                                        <td>'.$row['Birthplace'].'</td>
                                                        <td>'.$row['Status'].'</td>
                                                        <td>
                                                            <button class="btn btn-success btn-sm" data-target="#approveModal'.$row['id'].'" data-toggle="modal"><i class="fa fa-thumbs-up" aria-hidden="true"></i> Approve</button>
                                                            <button class="btn btn-danger btn-sm" data-target="#disapproveModal'.$row['id'].'" data-toggle="modal"><i class="fa fa-thumbs-down" aria-hidden="true"></i> Disapprove</button>
                                                        </td>
                                                    </tr>
                                                    ';
    
                                                }
                                                include "approve_modal.php";
                                                include "disapprove_modal.php";
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    

                                    <?php include "../deleteModal.php"; ?>

                                    </form>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->

                            <?php include "function.php"; ?>


                    </div>   <!-- /.row -->
                    <?php 
                    }
                    else
                    {
                    ?>

                    <div class="row">
                        <!-- left column -->
                            <div class="box">
                                <div class="box-header">  
                                    <div style="padding:10px;">
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#reqModal"><i class="fa fa-user-plus" aria-hidden="true"></i> Request Permit</button>  
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">

                                <ul class="nav nav-tabs" id="myTab">
                                      <li class="active"><a data-target="#new" data-toggle="tab">New</a></li>
                                      <li><a data-target="#approved" data-toggle="tab">Approved</a></li>
                                      <li><a data-target="#disapproved" data-toggle="tab">Disapproved</a></li>
                                </ul>

                                <form method="post">

                                <div class="tab-content">
                                    <div id="new" class="tab-pane active in">
                                    <table id="table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Business Name</th>
                                                <th>Business Address</th>
                                                <th>Type of Business</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $squery = mysqli_query($con, "SELECT * FROM tblpermit p left join tblresident r on r.id = p.residentid where r.id = ".$_SESSION['userid']." and status = 'New' ") or die('Error: ' . mysqli_error($con));
                                            if(mysqli_num_rows($squery) > 0)
                                            {
                                                while($row = mysqli_fetch_array($squery))
                                                {
                                                    echo '
                                                    <tr>
                                                        <td>'.$row['businessName'].'</td>
                                                        <td>'.$row['businessAddress'].'</td>
                                                        <td>'.$row['typeOfBusiness'].'</td>
                                                    </tr>
                                                    ';
                                                }
                                            }
                                            else{
                                                echo '
                                                <tr>
                                                <td colspan="5" style="text-align: center;">No record found</td>
                                                </tr>
                                                ';
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    </div>

                                    <div id="approved" class="tab-pane">
                                    <table id="table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Business Name</th>
                                                <th>Business Address</th>
                                                <th>Type of Business</th>
                                                <th>OR Number</th>
                                                <th>Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $squery = mysqli_query($con, "SELECT * FROM tblpermit p left join tblresident r on r.id = p.residentid where r.id = ".$_SESSION['userid']." and status = 'Approved'  ") or die('Error: ' . mysqli_error($con));
                                            if(mysqli_num_rows($squery) > 0)
                                            {
                                                while($row = mysqli_fetch_array($squery))
                                                {
                                                    echo '
                                                    <tr>
                                                        <td>'.$row['businessName'].'</td>
                                                        <td>'.$row['businessAddress'].'</td>
                                                        <td>'.$row['typeOfBusiness'].'</td>
                                                        <td>'.$row['orNo'].'</td>
                                                        <td>₱ '.number_format($row['samount'],2).'</td>
                                                    </tr>
                                                    ';
                                                }
                                            }
                                            else{
                                                echo '
                                                <tr>
                                                <td colspan="5" style="text-align: center;">No record found</td>
                                                </tr>
                                                ';
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    </div>

                                    <div id="disapproved" class="tab-pane">
                                    <table id="table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Business Name</th>
                                                <th>Business Address</th>
                                                <th>Type of Business</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $squery = mysqli_query($con, "SELECT * FROM tblpermit p left join tblresident r on r.id = p.residentid where r.id = ".$_SESSION['userid']." and status = 'Disapproved'  ") or die('Error: ' . mysqli_error($con));
                                            if(mysqli_num_rows($squery) > 0)
                                            {
                                                while($row = mysqli_fetch_array($squery))
                                                {
                                                    echo '
                                                    <tr>
                                                        <td>'.$row['businessName'].'</td>
                                                        <td>'.$row['businessAddress'].'</td>
                                                        <td>'.$row['typeOfBusiness'].'</td>
                                                    </tr>
                                                    ';
                                                }
                                            }
                                            else{
                                                echo '
                                                <tr>
                                                <td colspan="5" style="text-align: center;">No record found</td>
                                                </tr>
                                                ';
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    </div>
                                </div>


                                    <?php include "req_modal.php";?>
                                    <?php include "function.php";?>
                                    </form>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->


                    </div>   <!-- /.row -->

                    <?php
                    }
                    ?>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
        <!-- jQuery 2.0.2 -->
        <?php }
        include "../footer.php"; ?>




<script type="text/javascript">
    <?php 
    if(!isset($_SESSION['staff']))
    {
    ?>
        $(function() {
            $("#table").dataTable({
               "aoColumnDefs": [ { "bSortable": false, "aTargets": [ 0,7 ] } ],"aaSorting": []
            });
            $("#table1").dataTable({
               "aoColumnDefs": [ { "bSortable": false, "aTargets": [ 0,4 ] } ],"aaSorting": []
            });
            $(".select2").select2();
        });
    <?php
    }
    else
    {
    ?>
        $(function() {
            $("#table").dataTable({
               "aoColumnDefs": [ { "bSortable": false, "aTargets": [ 6 ] } ],"aaSorting": []
            });
            $("#table1").dataTable({
               "aoColumnDefs": [ { "bSortable": false, "aTargets": [ 3 ] } ],"aaSorting": []
            });
            $(".select2").select2();
        });
    <?php
    }
    ?>
</script>
    </body>
</html>