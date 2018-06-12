﻿<%@ Page Title="Register" Language="C#"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ELCMS.Account.Register" %>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Register - Event LifeCycle Management System</title>
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
      <div class="card-header">Register</div>
      <div class="card-body">
        <form runat="server" id="registration">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <asp:TextBox runat="server" CssClass="form-control" id="reg_Username"  value=""> </asp:TextBox>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <asp:TextBox runat="server" CssClass="form-control" id="reg_Password" type="password" placeholder="Password" value=""></asp:TextBox>
          </div>
            <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password</label>
            <asp:TextBox runat="server" CssClass="form-control" id="reg_confirm_pwd" type="password" placeholder="Confirm Password" value=""></asp:TextBox>
          </div>
          <asp:Button CssClass="btn btn-primary btn-block" id="btn_register" Text="Register" runat="server" OnClick="Register_Submit" />
        </form>
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