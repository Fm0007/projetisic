$(document).ready(function () {
    $.ajax({  
        url: "../ListAllProduct",
        success: function (data, textStatus, jqXHR) {
            remplirProduit(data);
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
    
function remplirProduit(data) {
        var liste = $("#listproduit");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<tr>"
                   
                    +" <td class='tm-product-name'>"+ data[i][0] +"</td>"
                   +" <td>" + data[i][1] + "</td>"
                   +" <td>" + data[i][2] + "</td>"
                   + "<td>" + data[i][3] + "</td>"
                  + " <td>"
                   +  " <a  onclick='deleteProduct(" + data[i][0] + ")'  class='tm-product-delete-link'>"
                    +   " <i class='far fa-trash-alt tm-product-delete-icon'></i>"
                  +   " </a>"
                 +  " </td>"
               +  " </tr>"
                    
        ;
        }
        liste.html(option);
    }


  
      
});
