$(function () {
    $('#differenceList').dataTable({
        "bJQueryUI": true,
        "bserverSide": true,
        "sAjaxSource": "HomeController?reqType=" + "fetchDifferenceList",
        "aoColumns": [
            {"mData": "lorryNo"},
            {"mData": "cashbookDate"},
            {"mData": "remarks"},
            {"mData": "challanNo"},
            {"mData": "amount"}
        ]
    });
}); 