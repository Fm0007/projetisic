$(document).ready(function () {
    $.ajax({
        url: "../DeleteProduct",
        success: function (data, textStatus, jqXHR) {
            ;
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("erreur");
        }

    });


});
