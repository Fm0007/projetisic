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
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
           
        <script src="../script/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../script/remplirCommandeAdmin.js" type="text/javascript"></script>

</head>

<body id="reportsPage">
    <div class="" id="home">
             <%@include file="navbar.jsp"%>
             <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-12 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Ajouter un Produit</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
                <form method="get" action="../AddProduct" class="tm-edit-product-form">
                 
                 <div class="form-group mb-4">
                    <label
                      for="status"
                      >Status</label
                    >
                    <select name ="status"
                      class="custom-select tm-select-accounts"
                      id="status"
                    > 
                        <option value="0" >Tout</option>
                        <option value="en cours">en cours</option>
                        <option value="Valide">Validé</option>
                        <option value="Livré">Livré</option>
                        <option value="annule">annulé</option>
                    </select>
                  </div>
                  
              </div>
              
              
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
             
             
        <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h2 class="tm-block-title">Orders List</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Id commande</th>
                                    <th scope="col">status</th>
                                    <th scope="col">nom</th>
                                    <th scope="col">email</th>
                                    <th scope="col">adresse</th>
                                    <th scope="col">Date et heure</th>
                                </tr>
                            </thead>
                            <tbody id="listcommande">
                                <!-- jquery ls comzndr-->
                            </tbody>
                        </table>
                    </div>
                </div>
        <%@include file="footer.jsp"%>
    </div>

    <!-- https://jquery.com/download/ -->
    <script src="js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="js/tooplate-scripts.js"></script>
    
</body>

</html>