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
    <script src="../script/remplirComboBoxCategorie.js" type="text/javascript"></script>
    <script src="../script/remplirComboBoxMarque.js" type="text/javascript"></script>
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
    <div class="" id="home">
             <%@include file="navbar.jsp"%>
        <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
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
                      for="nom"
                      >Nom de Produit
                    </label>
                    <input
                      id="nom"
                      name="nom"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  <div class="form-group mb-4">
                    <label
                      for="designation"
                      >Designation
                    </label>
                    <input
                      id="designation"
                      name="designation"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                     <div class="form-group mb-4">
                    <label
                      for="prix"
                      >Prix
                    </label>
                    <input
                      id="prix"
                      name="prix"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  <div class="form-group mb-4">
                    <label
                      for="categorie"
                      >Categorie</label
                    >
                    <select name="categorie"
                      class="custom-select tm-select-accounts"
                      id="categorie"
                    > <!-- jquery list categorie -->
                      
                    </select>
                  </div>
                 <div class="form-group mb-4">
                    <label
                      for="marque"
                      >Marque</label
                    >
                    <select name ="marque"
                      class="custom-select tm-select-accounts"
                      id="marque"
                    > 
                        <!-- j query combobox marque -->
                      
                    </select>
                  </div>
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">
                  <i
                    class="fas fa-cloud-upload-alt tm-upload-icon"
                    onclick="document.getElementById('fileInput').click();"
                  ></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                  <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="UPLOAD PRODUCT IMAGE"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
              </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
        <%@include file="footer.jsp"%>
    </div>

    
      <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker();
      });
    </script>
  </body>
</html>