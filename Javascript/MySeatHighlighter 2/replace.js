$(function(){
 $(function(){
    chrome.storage.local.get("MyName",function(item) {
        $("body").html(
$("body").html().replace( item.MyName , '<font style="background:#ffff00;">'+ item.MyName +'</font>' )
);
    });
});
});
