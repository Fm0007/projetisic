$(document).ready(function () {
    $.ajax({
        url: "ListAllCategorie",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
            remplirCategorie2(data);
            remplirCategorie3(data);
            
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
    });
    $.ajax({
        url: "./CheckCart",
        success: function (data, textStatus, jqXHR) {
            cartCount(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }

    });

    // fct remplissage de categorie

    function remplirCategorie(data) {
        var liste = $("#categories");
        var option = "";
        for (i = 0; i < data.length; i++) {
            option += " <a href='' class='nav-item nav-link' +" + data[i][0] + ">" + data[i][1] + "</a>";
        }
        liste.html(option);
    }

    // fct remplissage de categorie

    function remplirCategorie2(data) {
        var liste = $("#categories2");
        var option = "";
        for (i = 0; i < data.length; i++) {
            option += "<div class='col-lg-4 col-md-6 pb-1'>"
                    + " <div class='cat-item d-flex flex-column border mb-4' style='padding: 30px;'>"
                    + "  <p class='text-right'>PH Produits</p>"
                    + " <a href='' class='cat-img position-relative overflow-hidden mb-3'>"
                    + "    <img class='img-fluid' src='img/product/PH.jpg' alt=''>"
                    + "</a>"
                    + "<h5 class='font-weight-semi-bold m-0'>" + data[i][1] + "</h5>"
                    + "</div>"
                    + "  </div>";
        }
        liste.html(option);
    }
     function remplirCategorie3(data) {
        var liste = $("#categories3");
        var option = "";
        for (i = 0; i < data.length; i++) {
            option += "<div class='custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3'> "
                                    +   " <input type='checkbox' onclick='t()' class='custom-control-input'  id='color-"+data[i][0]+"'> "
                                    +    "<label class='custom-control-label' for=color-"+data[i][0]+"'>"+data[i][1]+"</label> "
                                +     "   <span class='badge border font-weight-normal'></span> "
                               +   "  </div>"
        }
        liste.html(option);
    }

    // fonction de NB produit panier
    function cartCount(data) {
        var liste = $("#cart");
        var option = "<span class='badge'>" + data + "</span>";

        liste.html(option);
    }

    function addToCart(id, nb) {
        $.ajax({
            url: "AddtoCart?id=" + id + "&nb=" + nb,
            success: function (data, textStatus, jqXHR) {
                if (data === -1) {
                    alert('Veillez se connecter');
                }
                else {
                    cartCount(data);
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }

        });

    }
    function t() {
        var checkedindex = [];
        var price = document.getElementsByName("price");
        for (var i = 0; i < price.length; i++)
        {
            if (price[i].checked)
                checkedindex.push(i);
        }
        $.ajax({
            url: "AddtoCart",
            data: { pricefilter : checkedindex} ,
            success: function (data, textStatus, jqXHR) {
                if (data === -1) {
                    alert('Veillez se connecter');
                }
                else {
                    cartCount(data);
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }

        });

    }
    window.addToCart = addToCart;
    window.t = t;





});


