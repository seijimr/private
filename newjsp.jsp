<%!
    

    void profile(String name, String birth, String intr){
    out.println("名前："+ name + "<br>");
    out.println("生年月日：" + birth + "<br>");
    out.println("自己紹介:" + intr + "<br>");
}
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       for(i=0;i<10;i++){
       profile("田中太郎","1219-10-9","hello");
       }
    </body>
</html>
