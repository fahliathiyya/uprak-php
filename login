<?php

include "koneksi.php";

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">



    <title>Login User</title>
</head>

<style>
    

    .container {
        width: 400px;
        height : 590px;
    }

    .container img {
        width: 240px;
        height: 240px;
        top :100px;


    }

    .container {
       
       
    }
</style>

<body>
<form method="POST" name="formlogin">

    <div class="container mt-5 shadow p-3 mb-5 bg-body rounded">
    <center>
    <img src="logo.png" alt="">
    </center>
    <form action="simpan.php" method="post">
            <div class="mb-3 mt-3">
            <label for="username" class="col-sm-8 col-form-label">Username</label>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control " name="username">
                                </div>
            </div>
            <div class="mb-3">
            <label for="email" class="col-sm-8 col-form-label">Email</label>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control " name="email">
                                </div>
            </div>
            
           
            <input type="submit" name="simpan" value="Submit" class="btn btn-primary mt-2 mb-3">
           
        </form>
    </div>
</form>


<?php
    if (isset($_POST['simpan'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $sql = "INSERT INTO pengguna (username,email)
        VALUES ('$username','$email')";
        $query = mysqli_query($conn, $sql);

        if ($query) {
            echo ('Location: index.php');
        } else {
            header('location: index.php');
        }
    }
    ?>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>

</html>
