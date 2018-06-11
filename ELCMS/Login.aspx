﻿<%@ Page Title="Log in" Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELCMS.Account.Login" Async="true" %>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="../css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form runat="server">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <asp:TextBox runat="server" CssClass="form-control" id="txt_Username" placeholder="Enter Username"> </asp:TextBox>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <asp:TextBox runat="server" CssClass="form-control" id="txt_Password" type="password" placeholder="Password"></asp:TextBox>
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <asp:Button CssClass="btn btn-primary btn-block" id="btn_submit" Text="Login" runat="server" OnClick="Login_Submit" />
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>