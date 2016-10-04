
$(function () {
    $('#saveChallan').submit(function () {
        var formData = new FormData($(this)[0]);
        var reqType = $('#reqType').val();
        var challanData = JSON.stringify(getChallanBean());
        $.ajax({
            async: false,
            type: "POST",
            url: "HomeController",
            datatype: "json",
            data: formData,
            challanData: challanData,
            reqType: reqType,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data)
            {
                console.log(data);
//                if (data.statusType === "Success") {
//                    alert('Chhallan saved successfully.');
//                } else {
//                    alert('Failed. Please try with again.');
//                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert(errorThrown);
            }
        });
        return false;
    });
});

function getChallanBean()
{
    var challan = new ChallanBean();
    challan.transportBean = getTransportBean();
    challan.lorryBean = getLorryBean();
    challan.challanDate = $('#challanDate').val();
    challan.totalFreight = $('#totalFreight').val();
    challan.advance = $('#advance').val();
    challan.toPay = $('#toPay').val();
    return challan;
}

function ChallanBean()
{
    this.challanDate = null;
    this.totalFreight = null;
    this.advance = null;
    this.toPay = null;
    this.transportBean = null;
    this.lorryBean = null;
}

function getTransportBean()
{
    var transport = new TransportBean();
    transport.transportName = $('#transportName').val();
    transport.loadingAddLine1 = $.trim($('#loadingAddLine1').val());
    transport.loadingAddLine2 = $('#loadingAddLine2').val();
    transport.loadingAddLine3 = $.trim($('#loadingAddLine3').val());
    transport.unloadingAddLine1 = $('#unloadingAddLine1').val();
    transport.unloadingAddLine2 = $.trim($('#unloadingAddLine2').val());
    transport.unloadingAddLine3 = $('#unloadingAddLine3').val();
    return transport;
}

function getLorryBean()
{
    var lorry = new LorryBean();
    lorry.lorryNo = $('#lorryNo').val();
    lorry.phoneNumberOfLorryDriverOrOwner = $.trim($('#phoneNumberOfLorryDriverOrOwner').val());
    lorry.accNoOfLorryOwner = $('#accNoOfLorryOwner').val();
    lorry.lorryWeight = $.trim($('#lorryWeight').val());
    lorry.lorryRate = $('#lorryRate').val();
    lorry.lorryEmpo = $.trim($('#lorryEmpo').val());
    return lorry;
}

function LorryBean()
{
    this.lorryNo = null;
    this.phoneNumberOfLorryDriverOrOwner = null;
    this.accNoOfLorryOwner = null;
    this.lorryWeight = null;
    this.lorryRate = null;
    this.lorryEmpo = null;
}

function TransportBean()
{
    this.transportName = null;
    this.loadingAddLine1 = null;
    this.loadingAddLine2 = null;
    this.loadingAddLine3 = null;
    this.unloadingAddLine1 = null;
    this.unloadingAddLine2 = null;
    this.unloadingAddLine3 = null;
}