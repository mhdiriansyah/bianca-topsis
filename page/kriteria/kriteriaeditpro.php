<div class="panel panel-headline">
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-12">
                <div class="pull-left">
                    <h3 class="panel-title">Edit Data Kriteria</h3>
                    <p class="panel-subtitle"></p>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-12">
                <?php 
                    if (isset($_POST['submit'])){
                        $id         = $_POST['id'];
                        $nama       = $_POST['nama_kriteria'];
                        $nilai      = $_POST['nilai'];

                        $insert = mysqli_query($conn, "UPDATE tbl_kriteria SET
                                    nama_kriteria       = '$nama',
                                    nilai_terbobot      = $nilai
                                    WHERE id_kriteria   = '$id'");
                        
                        if ($insert){
                            echo    '<div class="alert alert-success alert-dismissible" role="alert">'.
							            '<i class="fa fa-check-circle"></i> Data berhasil disimpan'.
                                    '</div>';
                            echo "<meta http-equiv='refresh' content='1;
                            url=?page=kriteria'>";
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>