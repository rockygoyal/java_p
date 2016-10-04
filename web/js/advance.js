$(function () {
    $('#advanceList').dataTable({
        "bJQueryUI": true,
        "bserverSide": true,
        "sAjaxSource": "HomeController?reqType=" + "fetchAdvanceList",
        "aoColumns": [
            {"mData": "lorryNo"},
            {"mData": "cashbookDate"},
            {"mData": "remarks"},
            {"mData": "challanNo"},
            {"mData": "amount"}
        ]
    });
}); 