

<%@page import="ky.ItemDataBeans"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<ItemDataBeans> searchresult = (ArrayList<ItemDataBeans>) request.getAttribute("searchresult");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <%
                //通常はこちらを表示
                if (request.getAttribute("nothing") == null) {
                    out.print(request.getParameter("search") + "の通販検索結果");
                    //検索が0件の場合こちらを表示
                } else if (request.getAttribute("nothing").equals("検索結果がありませんでした。")) {
                    out.print(request.getAttribute("nothing"));
                } //入力がなければこちらを表示
                else {
                    out.print("検索したい言葉（キーワード）が入力されていません");
                }
            %>
        </title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <!--通常はこちらを表示-->
        <%if (request.getAttribute("nothing") == null) {%>
        検索結果数：<%=request.getAttribute("total")%>件
        <table border=1>
            <%
                for (int i = 0; i < searchresult.size(); i++) {
                    ItemDataBeans idb = searchresult.get(i);%>
            <tr>
                <td><a href="Item?id=<%=idb.getCode()%>"><img src="<%=idb.getSmallimg()%>" alt="画像"></a></td>
                <td><a href="Item?id=<%=idb.getCode()%>"><%=idb.getName()%></a></td>
                <td><%=idb.getPrice()%>円</td>
            </tr>
            <%}%>
        </table>

        <!--キーワードを入力しなかった場合もしくは検索結果がなかった場合はこちらを表示-->
        <%} else {%>
        <%=request.getAttribute("nothing")%>
        <form action="Search" method="GET">
            <input type="text" name="search">
            <button type="submit">検索</button>
        </form>

        <%}%>

    </body>
</html>