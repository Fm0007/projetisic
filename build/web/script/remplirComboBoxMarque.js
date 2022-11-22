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
        var liste = $("#marque");
        var option = "";
        for (i = 0; i < data.length ; i++) {
            option += "<option value='"+ data[i][0] +"'>"+ data[i][1] +"</option>"
                    
        ;
        }
        liste.html(option);
    }
    
  
      
});