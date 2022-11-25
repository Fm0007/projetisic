/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $.ajax({  
        url: "../CheckCart",
        success: function (data, textStatus, jqXHR) {
            cartCount(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
        
    });


    function deleteProduct(id) {
        $.ajax({
            url: "../DeleteProduct?id=" + id,
            success: function (data, textStatus, jqXHR) {     
                remplirProduit(data);     
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }

        });

    }

    window.deleteProduct=deleteProduct;
    
function cartCount(data) {
        var liste = $("#cart");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<span class='badge'>"+ data[i]+"</span>"
                    
        ;
        }
        liste.html(option);
    }


  
      
});


