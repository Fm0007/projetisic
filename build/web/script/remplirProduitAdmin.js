$(document).ready(function () {
    $.ajax({  
        url: "../ListAllProduct",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
        
    });
function remplirCategorie(data) {
        var liste = $("#listproduit");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<tr>"
                   +" <th scope='row'><input type='checkbox' /></th>"
                    +" <td class='tm-product-name'>"+ data[i][0] +"</td>"
                   +" <td>" + data[i][1] + "</td>"
                   +" <td>" + data[i][2] + "</td>"
                   + "<td>" + data[i][3] + "</td>"
                  + " <td>"
                   +  " <a id='deleteProduct' href='../DeleteProduct?id="+ data[i][0]+"' class='tm-product-delete-link'>"
                    +   " <i class='far fa-trash-alt tm-product-delete-icon'></i>"
                  +   " </a>"
                 +  " </td>"
               +  " </tr>"
                    
        ;
        }
        liste.html(option);
    }


});
