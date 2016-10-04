$(function () {
    $('#balanceList').dataTable({
        "bJQueryUI": true,
        "bserverSide": true,
        "sAjaxSource": "HomeController?reqType=" + "fetchBalanceList",
        "aoColumns": [
            {"mData": "cashbookDate"},
            {"mData": "amount"},
            {"mData": "lorryNo"},
            {"mData": "transportName"}
        ]
    });
}); 