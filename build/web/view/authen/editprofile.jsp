<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Profile</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background-color: #f8f9fa;
                font-family: Arial, sans-serif;
            }
            .container {
                max-width: 600px;
                margin: 50px auto;
                padding: 30px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            }
            .avatar-upload {
                position: relative;
                margin-bottom: 20px;
            }
            .avatar-edit {
                position: absolute;
                right: 12px;
                bottom: 12px;
                z-index: 1;
            }
            .avatar-edit input {
                display: none;
            }
            .avatar-edit label {
                display: block;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background: #007bff;
                border: 2px solid #fff;
                box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
                cursor: pointer;
                font-size: 20px;
                text-align: center;
                line-height: 40px;
                color: #fff;
            }
            .avatar-edit label:hover {
                background: #0056b3;
                border-color: #fff;
            }
            .avatar-edit label::before {
                content: "\f040";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
            }
            .avatar-preview {
                width: 150px;
                height: 150px;
                border-radius: 50%;
                overflow: hidden;
                border: 4px solid #007bff;
                margin: 0 auto;
            }
            .avatar-preview img {
                width: 100%;
                height: auto;
            }
            .form-group {
                margin-bottom: 20px;
            }
            .form-group label {
                font-weight: bold;
            }
            .btn-save {
                background-color: #007bff;
                border-color: #007bff;
            }
            .btn-save:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mb-4">Edit Profile</h1>
            <form action="authen?action=editprofile" method="post" id="registrationForm" enctype="multipart/form-data">
                <div class="avatar-upload text-center">
                    <div class="avatar-preview">
                        <img id="imagePreview" src="${sessionScope.us.avatar}" alt="User Avatar">
                    </div>
                    <div class="avatar-edit">
                        <input type="file" id="imageUpload" name="avatar" accept=".png, .jpg, .jpeg">
                        <label for="imageUpload"><i class="fas fa-pencil-alt"></i></label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" value="${sessionScope.us.fullName}" class="form-control" name="fullName" id="fullName" placeholder="Full Name">
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" value="${sessionScope.us.mobile}" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" value="${sessionScope.us.email}" class="form-control" name="email" id="email" placeholder="Email" readonly>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" value="${sessionScope.us.address}" class="form-control" name="address" id="address" placeholder="Address">
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="male" value="1" ${sessionScope.us.gender == true ? 'checked' : ''}>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="female" value="0" ${sessionScope.us.gender == false ? 'checked' : ''}>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>
                <input type="hidden" name="userId" value="${sessionScope.us.user_Id}">
                <div class="form-group text-center">
                    <button class="btn btn-lg btn-save" type="submit">Save</button>
                    <a class="btn btn-lg btn-primary" href="authen?action=changepassword">Change Password</a>
                    <a class="btn btn-lg btn-secondary" href="home">Back to Home</a>
                </div>
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $('#imagePreview').attr('src', e.target.result);
                        }
                        reader.readAsDataURL(input.files[0]);
                    }
                }
                $("#imageUpload").change(function () {
                    readURL(this);
                });
            });
        </script>
    </body>
</html>
