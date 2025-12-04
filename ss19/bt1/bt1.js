// Giới thiệu các phương thức thao tác với Local Storage
// Luyện tập về các phương thức và sự kiện thao tác với DOM
 

// 2. Mô tả
// Biểu mẫu đăng ký tài khoản gồm có: Email, Password và Confirm Password.
// Kiểm tra sự hợp lệ thông tin người dùng nhập vào: Email không được bỏ trống, mật khẩu không được bỏ trống, xác nhận mật khẩu trùng khớp.
// Kiểm tra sự tồn tại của email đăng ký.
// Lưu tài khoản vừa tạo thành công.
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    h1 {
        margin-left: 50px;
    }

    #Register {
        background-color: brown;
        color: aliceblue;
        width: 200px;
        margin-left: 50px;
        text-align: center;
        border-radius: 5px;
        line-height: 30px;
    }

    label {
        top: 200px;
        margin-left: 50px;
    }
</style>

<body>
    <h1>Register</h1>
    <br>
    <label for="email">Email:</label>
    <input id="email" type="email" placeholder="Enter your email address">
    <br>
    <br>

    <label for="password">Password :</label>
    <input id="password" type="text" placeholder="Enter your password">
    <br>
    <br>
    <label for="confirm-password">Confirm password:</label>
    <input id="confirm-password" placeholder="Enter your confirm password">
    <br>
    <br>
    <button id="Register">Register</button>
</body>
<script>
    const inputEmail = document.getElementById('email');
    const inputPassword = document.getElementById('password');
    const inputConfirm = document.getElementById('confirm-password');
    const buttonRegister = document.getElementById('Register');

    buttonRegister.addEventListener("click", () => {
        let isValid = true;

        if (inputEmail.value === "") {
            isValid = false;
            alert("Email ko đc bỏ trống !");
        }

        if (inputPassword.value === "") {
            isValid = false;
            alert("Password ko đc để trống ");
        }


        if (inputPassword.value !== inputConfirm.value) {
            isValid = false;
            alert("nhập lại lại mật khẩu không đúng ");
        }

        if (isValid === true) {
            const newAccount = {
                email: inputEmail.value,
                password: inputPassword.value
            };
            localStorage.setItem("newAccount", JSON.stringify(newAccount));
            alert("Đăng ký thành công ");
        }

    })


</script>

</html>