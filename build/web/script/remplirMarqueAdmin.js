$(document).ready(function () {
    $.ajax({  
        url: "../ListAllMarque",
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
                    +" <td id='id' class='tm-product-name'>"+ data[i][0] +"</td>"
                   +" <td>" + data[i][1] + "</td>"
                  + " <td>"
                   +  " <a id='deleteMarque'  class='tm-product-delete-link'>"
                    +   " <i class='far fa-trash-alt tm-product-delete-icon'></i>"
                  +   " </a>"
                 +  " </td>"
               +  " </tr>"
                    
        ;
        }
        liste.html(option);
    }
    
  
      
});