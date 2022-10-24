$(document).ready(function () {
    // Contact
    kollimContactFormApi();

});

/* contact */
function kollimContactFormApi() {
    if ($('.api-password-group').length > 0) {
        $.ajax('/Umbraco/PersonalPage/PersonalPageApi/ContactFormApiKey',
            {
                type: 'POST',
                success: function (data) {
                    $('.api-password-group #Password').val(data.MainKey);
                    $('.api-password-group #ConfirmPassword').val(data.SubKey);
                }
            });
    }
}