
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%!
ArrayList profile(){
    ArrayList<String> list= new ArrayList<>();
    list.add(id);
    list.add("名前");
    list.add("生年月日");
    list.add("住所");
    return list;
}
Integer id=129149192;

<% 
ArrayList list =profile();
for(int i = 1; i < list.size(); i++){
    out.print(list.get(i)+"<br>");
}

%>