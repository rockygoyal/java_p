
$(function () {
    $("#errorInValidationDialog").dialog({
        autoOpen: false,
        dialogClass: "no-close",
        draggable: false,
        minWidth: 500,
        modal: true,
        resizable: false,
        buttons: [
            {
                text: "Close",
                click: function () {
                    $(this).dialog("close");
                    location.reload();
                }
            }
        ]
    });

    $('#userLogin').submit(function () {
        $.ajax({
            type: "POST",
            url: "HomeController",
            dataType: "json",
            data: {
                reqType: "checkUserAuthentication",
                userName: $.trim($('#userName').val()),
                password: $.trim($('#password').val())
            },
            success: function (data)
            {
                console.log(data);
                if (data.statusType === "Failure")
                {
                    alert(data.text);
                }
                else
                {
                    window.location = "createchallan.jsp?";
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert(errorThrown);
            }
        });
        return false;
    });

});
