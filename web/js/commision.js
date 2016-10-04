$(function () {
    $('#commisionList').dataTable({
        "bJQueryUI": true,
        "bserverSide": true,
        "sAjaxSource": "HomeController?reqType=" + "fetchCommisionList",
        "aoColumns": [
            {"mData": "lorryNo"},
            {"mData": "cashbookDate"},
            {"mData": "remarks"},
            {"mData": "challanNo"},
            {"mData": "amount"}
        ]
    });
}); 