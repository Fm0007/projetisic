$(document).ready(function () {
    $.ajax({
        url: "ListAllCategorie",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
            remplirCategorie2(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        } 
    });
function remplirCategorie(data) {
        var liste = $("#categories");
        var option = "";
        for (i = 0; i < data.length; i++) {
            option += " <a href='' class='nav-item nav-link' +" + data[i][0] + ">" + data[i][1] + "</a>";
        }
        liste.html(option);
    }
function remplirCategorie2(data) {
        var liste = $("#categories2");
        var option = "";
        for (i = 0; i < data.length; i++) {
            option += "<div class='col-lg-4 col-md-6 pb-1'>"
              + " <div class='cat-item d-flex flex-column border mb-4' style='padding: 30px;'>"
               +   "  <p class='text-right'>PH Produits</p>"
                +   " <a href='' class='cat-img position-relative overflow-hidden mb-3'>"
                   + "    <img class='img-fluid' src='img/product/PH.jpg' alt=''>"
                +    "</a>"
                +    "<h5 class='font-weight-semi-bold m-0'>"+data[i][1]+"</h5>"
             +   "</div>"
        +  "  </div>";
        }
        liste.html(option);
    }




});


