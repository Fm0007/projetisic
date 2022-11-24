<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Admin - Dashboard HTML Template</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <script src="../script/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="../script/remplirProduitAdmin.js" type="text/javascript"></script>
   
        
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
    <div class="" id="home">
             <%@include file="navbar.jsp"%>
        <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-16 col-xl-16 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                    <h6 style=""> Liste des Produits </h6>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">ID</th>
                    <th scope="col">Nom de produit</th>
                    <th scope="col">Designation</th>
                    <th scope="col">prix</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody id="listproduit" >
                  <!--  liste des produit--> 
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a
              href="add-product.jsp"
              class="btn btn-primary btn-block text-uppercase mb-3">Ajouter un produit</a>
            <button class="btn btn-primary btn-block text-uppercase">
              Supprimer les produits sélectionnées
            </button>
          </div>
        </div>
     
      </div>
    </div>
        <%@include file="footer.jsp"%>
    </div>

    
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
    </script>
  </body>
</html>