$(document).ready(function () {
    $.ajax({  
        url: "../ListAllMarque",
        success: function (data, textStatus, jqXHR) {
            remplirMarque(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
        
    });
   
   
   
   function deleteMarque(id) {
        $.ajax({
            url: "../DeleteMarque?id=" + id,
            success: function (data, textStatus, jqXHR) {     
                remplirMarque(data);     
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }

        });

    }
    
    window.deleteMarque=deleteMarque;
    
    
function remplirMarque(data) {
        var liste = $("#listproduit");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<tr>"
                   
                    +" <td id='id' class='tm-product-name'>"+ data[i][0] +"</td>"
                   +" <td>" + data[i][1] + "</td>"
                  + " <td>"
                   +  " <a onclick='deleteMarque(" + data[i][0] + ")'   class='tm-product-delete-link'>"
                    +   " <i class='far fa-trash-alt tm-product-delete-icon'></i>"
                  +   " </a>"
                 +  " </td>"
               +  " </tr>"
                    
        ;
        }
        liste.html(option);
    }
    
  
      
});