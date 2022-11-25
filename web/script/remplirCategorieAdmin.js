$(document).ready(function () {
                $.ajax({  
               url: "../ListAllCategorie",
               success: function (data, textStatus, jqXHR) {
                   remplirCategorie(data);
               },
               error: function (jqXHR, textStatus, errorThrown) {
                   console.log("erreur");
               }

               });
               
        
       function deleteCategorie(id) {
        $.ajax({
            url: "../DeleteCategorie?id=" + id,
            success: function (data, textStatus, jqXHR) {     
                remplirCategorie(data);     
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }

        });

    }
    
    window.deleteCategorie=deleteCategorie;
 
        
    
   
    
    
function remplirCategorie(data) {
        var liste = $("#listproduit");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<tr>"
                   
                    +" <td id='id' class='tm-product-name'>"+ data[i][0] +"</td>"
                   +" <td>" + data[i][1] + "</td>"
                  + " <td>"
                   +  " <a href='deleteCategorie(" + data[i][0] +")'  class='tm-product-delete-link'>"
                    +   " <i class='far fa-trash-alt tm-product-delete-icon'></i>"
                  +   " </a>"
                 +  " </td>"
               +  " </tr>"
                    
        ;
        }
        liste.html(option);
    }
    
  
      
});