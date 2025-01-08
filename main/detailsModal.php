<!-- ========================= MODAL ======================= -->
<div id="detailsModal<?php echo $row['id'];?>" class="modal fade">
    <form method="post">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Details of <?php echo '<b>'.$row['cname'].'</b>';?></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Name:</label><br>
                                <?php echo $row['cname']; ?>
                            </div>
                            <div class="form-group">
                                <label>Gender:</label><br>
                                <?php echo $row['gender']; ?>
                            </div>
                            <div class="form-group">
                                <label>Birthdate:</label><br>
                                <?php echo $row['bdate']; ?>
                            </div>
                            <div class="form-group">
                                <label>Total Household:</label><br>
                                <?php echo $row['totalhousehold']; ?>
                            </div>
                            <div class="form-group">
                                <label>Relation to Head:</label><br>
                                <?php echo $row['relationtohead']; ?>
                            </div>
                            <div class="form-group">
                                <label>Bloodtype:</label><br>
                                <?php echo $row['bloodtype']; ?>
                            </div>
                            <div class="form-group">
                                <label>Monthly Income:</label><br>
                                <?php echo $row['monthlyincome']; ?>
                            </div>
                            <div class="form-group">
                                <label>Length of Stay:</label><br>
                                <?php echo $row['lengthofstay']; ?>
                            </div>
                            <div class="form-group">
                                <label>Nationality:</label><br>
                                <?php echo $row['nationality']; ?>
                            </div>
                            <div class="form-group">
                                <label>House Ownership Status:</label><br>
                                <?php echo $row['houseOwnershipStatus']; ?>
                            </div>
                            <div class="form-group">
                                <label>Former Address:</label><br>
                                <?php echo $row['formerAddress']; ?>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Age:</label><br>
                                <?php echo $row['age']; ?>
                            </div>
                            <div class="form-group">
                                <label>Civil Status:</label><br>
                                <?php echo $row['civilstatus']; ?>
                            </div>
                            <div class="form-group">
                                <label>Birth Place:</label><br>
                                <?php echo $row['bplace']; ?>
                            </div>
                            <div class="form-group">
                                <label>Zone:</label><br>
                                <?php echo $row['zone']; ?>
                            </div>
                            <div class="form-group">
                                <label>Differently Abled Person:</label><br>
                                <?php echo $row['differentlyabledperson']; ?>
                            </div>
                            <div class="form-group">
                                <label>Marital Status:</label><br>
                                <?php echo $row['maritalstatus']; ?>
                            </div>
                            <div class="form-group">
                                <label>Occupation:</label><br>
                                <?php echo $row['occupation']; ?>
                            </div>
                            <div class="form-group">
                                <label>Household No:</label><br>
                                <?php echo $row['householdnum']; ?>
                            </div>
                            <div class="form-group">
                                <label>Religion:</label><br>
                                <?php echo $row['religion']; ?>
                            </div>
                            <div class="form-group">
                                <label>Highest Educational Attainment:</label><br>
                                <?php echo $row['highestEducationalAttainment']; ?>
                            </div>
                            <div class="form-group">
                                <label>Land Ownership Status:</label><br>
                                <?php echo $row['landOwnershipStatus']; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default btn-sm" data-dismiss="modal" value="Close"/>
                </div>
            </div>
        </div>
    </form>
</div>
