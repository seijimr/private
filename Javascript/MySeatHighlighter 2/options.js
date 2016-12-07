$(function(){
//保存ボタンクリック時にデータ保存
  $("#save").click(function () {
    var MyName = $("#MyName").val();
   chrome.storage.local.set({"MyName":MyName}, function(){
            console.log("chrome.storage.local.set","saved");
        });
  });
// オプション画面の初期値を設定する
    chrome.storage.local.get("MyName",function(item) {
  if (item.MyName) {
    $("#MyName").val(item.MyName);
  }
});
});

