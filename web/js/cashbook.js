$(function () {

    $('#saveCashBack').submit(function () {
        $.ajax({
            type: "POST",
            url: "HomeController",
            dataType: "json",
            data: {
                reqType: "saveCashBookDetails",
                cashBookBeanData: JSON.stringify(getCashBookBean())
            },
            success: function (data)
            {
                if (data.statusType === "Success")
                {
                    alert('Data Inserted Successfully.');
                }
                else
                {
                    alert(data.statusType);
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

function fetchChallanDetailsByChallanNo(challanNo)
{
    if (challanNo !== '') {
        $.ajax({
            type: "POST",
            url: "HomeController",
            dataType: "json",
            data: {
                reqType: "fetchChallanDetails",
                challanNo: challanNo
            },
            success: function (data)
            {
                if (data === 'Wrong') {
                    alert('Challan Number Does Not Exist! Please type a correct One.');
                } else {
                    populateChallanDetails(data);
                }
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert(errorThrown);
            }
        });
    }
}

function populateChallanDetails(data)
{
    console.log(data.lorryBean.lorryNo);
    $('.submit').css("display", "block");
    $('#lorryId').val(data.lorryId);
    $('#transportId').val(data.transportId);
    $('#challanId').val(data.challanId);
    $('#lorryNo').val(data.lorryBean.lorryNo);
    $('#transportName').val(data.transportBean.transportName);

//    $('#amount').val(data.amount);
//    $('#balance').val(data.balance);
//    $('#cashBookAdvance').val(data.cashBookAdvance);
}

function getCashBookBean()
{
    var cashBook = new CashBookBean();
    cashBook.cashBookTypeId = $('#cashBookTypeId').val();
    cashBook.lorryId = $('#lorryId').val();
    cashBook.lorryNo = $('#lorryNo').val();
    cashBook.transportId = $('#transportId').val();
    cashBook.transportName = $('#transportName').val();
    cashBook.challanId = $('#challanId').val();
    cashBook.challanNo = $('#challanNo').val();
    cashBook.cashbookDate = $('#cashbookDate').val();
    cashBook.amount = $('#amount').val();
    cashBook.mrp = $('#mrp').val();
    cashBook.balance = $('#balance').val();
    cashBook.cashbookPayMode = $('#cashbookPayMode').val();
    cashBook.remarks = $('#remarks').val();
    cashBook.expenceType = $('#expenceType').val();
    cashBook.cashBookAdvance = $('#cashBookAdvance').val();
    console.log(cashBook);
    return cashBook;
}

function CashBookBean()
{
    this.cashBookTypeId = null;
    this.lorryId = null;
    this.lorryNo = null;
    this.transportId = null;
    this.transportName = null;
    this.challanId = null;
    this.challanNo = null;
    this.cashbookDate = null;
    this.amount = null;
    this.mrp = null;
    this.balance = null;
    this.cashbookPayMode = null;
    this.remarks = null;
    this.expenceType = null;
    this.cashBookAdvance = null;
}
