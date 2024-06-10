<%-- 
    Document   : Annonce_RH
    Created on : 29 sept. 2023, 08:58:44
    Author     : SABI
--%>
<%@page import="model.Cv"%>
<%@page import="model.Annonce"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Vector<Cv> cvs=(Vector<Cv>) request.getAttribute("cvs");
    Annonce a =(Annonce) request.getAttribute("a");
%>TYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
<!--  <link href="https://fonts.gstatic.com" rel="preconnect">-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index2.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2"><%=session.getAttribute("admin")%>(R.H)</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><%=session.getAttribute("admin")%></h6>
<!--              <span>Gestion</span>-->
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="Deconnexion">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>
          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->
      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="#">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>
      
      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="Init_AnnonceRh">
          <i class="bi bi-clipboard-check"></i>
          <span>Annonce Publier</span>
        </a>
      </li><!-- End Profile Page Nav -->
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

   <div class="pagetitle">
      <h1>Liste cv</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="Init_choixService">Home</a></li>
          <li class="breadcrumb-item active">Liste cv</li>
        </ol>
      </nav>
    </div>
    <!--//// Form_annonce-->
        
    <section class="section dashboard">
              <div class="news">
                    <%--<%= ida %>--%>
                    <div class="post-item clearfix">
                         <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4"><h4 class="card-title">NOMBRE DE CV RECUS : <%= cvs.size() %></h4></div>
                                    <div class="col-md-4"><h4 class="card-title">NOMBRE DE CV A ATTEINDRE : <%= a.getNombre()*3 %></h4></div>
                                    <div class="col-md-4"><h4 class="card-title" style="float:right">DATE FIN POUR CETTE ANNONCE : <%= a.getDatefin() %></h4></div>
                                </div>
                                <div class="row pt-5">
                                <table class="table table-borderless">
                                    <thead>
                                      <tr>
                                        <th scope="col">Nom</th>
                                        <th scope="col">prenom</th>
                                        <th scope="col">Sexe</th>
                                        <th scope="col">Experience</th>
                                        <th scope="col">Note CV</th>



                                      </tr>
                                    </thead>
                                    <tbody>
                                        <% for(int i=0;i<cvs.size();i++) { %>
                                            <tr>
                                                <td><%= cvs.get(i).getNomCdt() %></td>
                                                <td><%= cvs.get(i).getPrenomCdt() %></td>
                                                <td><%= cvs.get(i).getSexe() %></td>
                                                <td><%= cvs.get(i).getExpCdt() %></td>
                                                  <td><%= cvs.get(i).getNote() %></td>
                                               
                                            </tr>
                                        <% } %>
                                    </tbody>
                                  </table>
                                </div>
                            </div>

                        </div>
                        <% if(a.getEtat()==1) { %>
                            <div class="row p-5">
                                <a href="NotifTest?ida=<%= cvs.get(0).getAnnonce() %>"><button class="btn btn-primary ">Envoyer message</button></a>
                            </div>
                        <% }else if(a.getEtat()==2) { %>
                             <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">RALONGER DATE D'EXPIRATION ANNONCE</h4>
                                    <form action="RalongerAnnonce" method="get">
                                        <input type="hidden" name="ida" value=<%= a.getIdAnnonce() %>>
                                        <input type="hidden" name="df" value=<%= a.getDatefin() %>>
                                        <div class="input-group mb-3 ">
                                            <label class="input-group-text" for="nbrj">Nombre de jour</label>
                                            <input type="number" name="nbrj" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>
                                        </div>
                                        <button type="submit" class="btn btn-primary ">Ralonger annonce</button>
                                    </form>
                                </div>
                             </div>
                        <% } %>
                    </div>
                </div>
<!--      <div class="row">
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <div class="row">
                    <div class="col-md-6"><h5><a href="#">LISTES DES CV POUR CETTE ANNONCE</a></h5></div>
                    <div class="col-md-6"><h5 style="float: right">NOMBRE DE CV RECU : <%= cvs.size() %></h5></div>
                </div>

                <div class="card-body pb-0">

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">Nom</th>
                        <th scope="col">prenom</th>
                        <th scope="col">Sexe</th>
                        <th scope="col">Experience</th>
                        <th scope="col">Note CV</th>
                       


                      </tr>
                    </thead>
                    <tbody>
                        <% for(int i=0;i<cvs.size();i++) { %>
                            <tr>
                                <td><%= cvs.get(i).getNomCdt() %></td>
                                <td><%= cvs.get(i).getPrenomCdt() %></td>
                                <td><%= cvs.get(i).getSexe() %></td>
                                <td><%= cvs.get(i).getExpCdt() %></td>
                                  <td><%= cvs.get(i).getNote() %></td>
                                <% if(cvs.get(i).getEtat()==0){ %>
                                    <td><a href="NotifTest?idcv=<%= cvs.get(i).getIdCv() %>&ida=<%= cvs.get(i).getAnnonce() %>">Accepter</a></td>
                                <% }else { %>
                                    <td>Deja accepte</td>
                                <% } %>
                            </tr>
                        <% } %>
                    </tbody>
                  </table>

                </div>

              </div>
            </div> End Top Selling 

          </div>-->
    </section>
                        
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
