$(document).ready(function () {
    $.ajax({
        url: "../DeleteProduct",
        success: function (data, textStatus, jqXHR) {
            remplirCategorie(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }

    });


});
