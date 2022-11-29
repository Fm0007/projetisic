$(document).ready(function () {
    $.ajax({  
        url: "../ListCommande",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }
        
    });
    $("#status").change(function () {
        $.ajax({
            url: "../FindCommandeByStatus",
            data: {status: $(this).val()},
            success: function (data, textStatus, jqXHR) {
                remplirCategorie(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("erreur");
            }
        });
    });
        
       
 
        
    
   
    
    
function remplirCategorie(data) {
        var liste = $("#listcommande");
        var tmp = "";
        var option = "";
        for (i = 0; i < data.length ; i++) {
            if(data[i][5]==="en cours") {tmp = "pending"; }
            if(data[i][5]==="Valide") {tmp = "moving"; }
            if(data[i][5]==="Livré") {tmp = "moving"; }
            if(data[i][5]==="annulé") {tmp = "cancelled"; }
            option +=  "<tr> "
+ "                                   <th scope='row'><b>#"+data[i][0]+"</b></th> "
 + "                                  <td> "
  + "                                     <div class='tm-status-circle "+ tmp +"'> "
   + "                                    </div>"+data[i][5]+"  "
    + "                               </td> "
     + "                              <td><b>"+data[i][2]+"</b></td> "
      + "                             <td><b>"+data[i][3]+"</b></td> "
      +  "                            <td><b>"+data[i][4]+"</b></td> "
       +  "                           <td>"+data[i][1]+"</td> "
         +  "                     </tr>   "
                    
        ;
        }
        liste.html(option);
    }
    
  
      
});