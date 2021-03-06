﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintops.aspx.cs" Inherits="ELCMS.Maintops" %>

<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>View User Details</title>
  <!-- Bootstrap core CSS-->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="../css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="UserDashboard.aspx">Equipment Lifecycle Management system</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="UserDashboard.aspx">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My Profile">
          <a class="nav-link" href="UserProfileDetails.aspx">
            <i class="fa fa-id-card-o"></i>
            <span class="nav-link-text">My Profile</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My Equipments">
          <a class="nav-link" href="UserAllEquipments.aspx">
            <i class="fa fa-cogs"></i>
            <span class="nav-link-text">My Equipments</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Routines Log">
          <a class="nav-link" href="RoutinesLog.html">
            <i class="fa fa-history"></i>
            <span class="nav-link-text">Routines Log</span>
          </a>
        </li>

     
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout </a>
        </li>
      </ul>
    </div>
  </nav>
    <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Equipments</li>
      </ol>
    <div class="container" >
    <form runat="server">
        <div class="form-group">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lbl_orig">ORIG</label>
                <asp:TextBox runat="server" type="number" CssClass="form-control" id="txt_Orig" placeholder="ORIG" required="required"/>
            </div>
            <div class="form-group col-md-2">
                <label for="lbl_AMND">AMND</label>
                <asp:TextBox runat="server" type="number" CssClass="form-control" id="txt_AMND" placeholder="AMND" required="required"/>
            </div>
            <div class="form-group col-md-6">
                <label for="lbl_equipment_name">Equipment Name</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_Equip_name" placeholder="Equipment Name" required="required"/>
            </div>
            <div class="form-group col-md-2">
                <label for="lbl_maintops_no">Maintops No</label>
                <asp:TextBox runat="server" type="number" CssClass="form-control" id="txt_maintops_no" placeholder="Maintops No" required="required"/>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lbl_equip_code">Equipment Code</label>
                <asp:TextBox runat="server" type="number" CssClass="form-control" id="txt_equip_code" placeholder="Equipment Code" required="required"/>
            </div>
            <div class="form-group col-md-6">
                <label for="lbl_equip_desc">Equipment Description</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_equip_desc" placeholder="Equipment Desc" required="required"/>
            </div>
            <div class="form-group col-md-4">
                <label for="lbl_equip_desc">Ships/Submarines Applicable</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_ship_name" placeholder="Ship Name" required="required"/>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-12">
                <label for="lbl_authority">Authority</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_authority" placeholder="Authority" required="required"/>
            </div>
            
       </div>
        <div class="form-row">
            <div class="form-group col-md-8">
                <label for="lbl_document">Documents</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_docs" placeholder="Documents" required="required"/>
            </div>
            <div class="form-group col-md-4">
                <label for="lbl_remarks">Remarks</label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" id="txt_remarks" placeholder="Remarks" />
            </div>
       </div>
            </div>
        <div>
            <asp:Button CssClass="btn btn-primary " id="btn_save_maintops" Text="Save" runat="server" OnClick="Maintops_Submit"/>
            <asp:Button CssClass="btn btn-primary " id="btn_clear_maintops" Text="Clear" runat="server" OnClientClick="this.form.reset();return false;"/>
            <button class="btn btn-primary " id="btn_add_routine" Text="Clear" runat="server" OnClick="Add_Routine"  style="margin-left: 795px" disabled>Add Routine</button>
         </div>      
        </form>
        </div>
        </div>
        <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.aspx">Logout</a>
          </div>
        </div>
      </div>
    </div>
        </div>
</body>

</html>
