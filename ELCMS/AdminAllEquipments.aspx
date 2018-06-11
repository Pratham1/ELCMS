<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAllEquipments.aspx.cs" Inherits="ELCMS.AdminAllEquipments" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Admin My Profile</title>
<!--For profile details-->

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

  <!-- Bootstrap core CSS-->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Custom fonts for this template-->
  <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <!-- Page level plugin CSS-->
  <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"/>
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet"/>
   


</head>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="AdminDashboard.aspx">Ships Equipment Lifecycle Management system</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="AdminDashboard.aspx">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My Profile">
          <a class="nav-link" href="AdminProfileDetails.aspx">
            <i class="fa fa-id-card-o"></i>
            <span class="nav-link-text">My Profile</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Users">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-group"></i>
            <span class="nav-link-text">Users</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="UsersList.html">View All Users</a>
            </li>
            <li>
              <a href="AddUser.html">Add User</a>
            </li>
            <li>
              <a href="UpdateUser.html">Update User details</a>
            </li>
            <li>
              <a href="DeleteUser.html">Delete User</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My Equipments">
          <a class="nav-link" href="AdminAllEquipments.aspx">
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
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="AdminDashboard.aspx">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">My Equipments</li>
      </ol>
   <div class="card mb-3">
      
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="routinesdonetable" style="width:auto">
              <thead>
                <tr>
                  <th>Equipment Name</th>
                  <th>Department</th>
                  <th>Users attached</th>
                  <th>Daily Routines</th>
                  <th>Weekly Routines</th>
                  <th>Monthily Routines</th>
                  <th>Quarterly Routines</th>
                  <th>Yearly Routines</th>

                </tr>
              </thead>
              <tfoot>
                <tr>
                   <th>Equipment Name</th>
                  <th>Department</th>
                  <th>Users attached</th>
                  <th>Daily Routines</th>
                  <th>Weekly Routines</th>
                  <th>Monthily Routines</th>
                  <th>Quarterly Routines</th>
                  <th>Yearly Routines</th>
                </tr>
              </tfoot>
              <tbody>
                <tr>
                  <td>Equipment 2</td>
                  <td>Electrical</td>
                  <td>6</td>
                  <td>30</td>
                  <td>13</td>
                  <td>4</td>
                  <td>22</td>
                  <td>3</td>
                  
                </tr>
                <tr>
                 <td>Equipment 1</td>
                  <td>Mechanical</td>
                  <td>6</td>
                  <td>30</td>
                  <td>13</td>
                  <td>4</td>
                  <td>22</td>
                  <td>3</td>
                </tr>
                
              </tbody>
            </table>
          </div>
        </div>
        <%-- <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> --%>
      </div>

        



        
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
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
            <a class="btn btn-primary" href="loginPage.aspx">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="../vendor/datatables/jquery.dataTables.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>

