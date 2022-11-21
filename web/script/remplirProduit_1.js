/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    $.ajax({
        url: "ListAllProduct",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
            remplirproduitpage(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
        
    });
function remplirCategorie(data) {
        var liste = $("#listproduit");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += " <div class='col-lg-4 col-md-6 col-sm-12 pb-1'>"
                    +"<div class='card product-item border-0 mb-4'>"
                    +"<div class='card-header product-img position-relative overflow-hidden bg-transparent border p-0'>"
                    +"<img class='img-fluid w-100' src='img/product/"+data[i][4]+"' alt=''>"
                    +"</div>"
                    +"<div class='card-body border-left border-right text-center p-0 pt-4 pb-3'>"
                    +"<h6 class='text-truncate mb-3'>"+data[i][1]+"</h6>"
                    +"<div class='d-flex justify-content-center'>"
                    +"<h6>" + data[i][3] +"Dhs</h6>"
                    +" </div>"
                    +"</div>"
                    +"<div class='card-footer d-flex justify-content-between bg-light border'>"
                    +"<a href='' class='btn btn-sm text-dark p-0'><i class='fas fa-eye text-primary mr-1'></i>View Detail</a>"
                    +"<a href='' class='btn btn-sm text-dark p-0'><i class='fas fa-shopping-cart text-primary mr-1'></i>Add To Cart</a>"
                    +"</div>"
                    +"</div>"
                    +"</div>"
                    
        ;
        }
        liste.html(option);
    }

function remplirproduitpage(data) {
        var liste = $("#listproduit");
        var option = "";
        var nbpage = parseInt(data.length/9) ;
        if ( nbpage*9 <   data.length ){
            nbpage = nbpage +1;
        }
        
        console.log(nbpage);
        
    }
    
    
    
    
    
});