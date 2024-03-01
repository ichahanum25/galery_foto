<?php 
include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UKK RPL 2024</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body style="background-color: #00008B;">
    <div class="container">
        <div class="row justify-content-center align-items-center vh-100">
            <div class="col-5" >
                <div class="card">
                    <div class="card-body">
                        <h4 class="row justify-content-center">Daftar</h4>
                        <?php
                        // ambil data yang dikirimkan oleh form dengan method post
                        $submit=@$_POST['submit'];
                        if ($submit=='Daftar'){
                            $username=@$_POST['username'];
                            $password=md5(@$_POST['password']);
                            $email=@$_POST['email'];
                            $namalengkap=@$_POST['namalengkap'];
                            $alamat=@$_POST['alamat'];

                            // cek apakah ada username dan email yang sama
                            // jika ada yang sama maka daftar akan gagal karena username atau email sudah dipakai orang lain
                            $cek=mysqli_num_rows(mysqli_query($conn, "SELECT * FROM user WHERE username='$username' OR email='$email' "));
                            if($cek==0) {
                                mysqli_query($conn, "INSERT INTO user VALUES ('','$username','$password','$email','$namalengkap','$alamat')");
                                echo 'Daftar Berhasil!!, Silahkan Login!!';
                                echo '<meta http-equiv="refresh" content="0.8; url=login.php">';
                            }else{
                                echo 'Maaf Akun Sudah Ada';
                                echo '<meta http-equiv="refresh" content="0.8; url=daftar.php">';
                            }
                        }
                    ?>
                    <form action="daftar.php" method="post">
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="username" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" required>
                    </div>
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" class="form-control" name="namalengkap" required>
                    </div>
                    <div class="form-group">
                        <label>Alamat</label>
                        <input type="text" class="form-control" name="alamat" required>
                    </div>
                    <input type="submit" value="Daftar" class="btn btn-primary my-3" name="submit">
                    <p>Sudah punya akun? <a href="login.php" class="link-info">Login Sekarang</a></p>
                </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>