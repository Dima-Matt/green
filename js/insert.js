$(document).ready(function () {
    $("#insert_in_table").click(function (){
        let name = $("#name");
        let surname = $("#surname");
        let prof = $("#profession");
        let email = $("#email");
        let tel = $("#phone");

        if (name.val() != '' && surname.val() != '' && prof.val() != '' && email.val() != '' && tel.val() != ''){
            $.ajax({
                type: 'post',
                url: 'clients.php',
                data: $("#form").serialize(),
                success: function (){
                    name.val('');
                    surname.val('');
                    prof.val('');
                    email.val('');
                    tel.val('');
                }

            });
        }
    });
});