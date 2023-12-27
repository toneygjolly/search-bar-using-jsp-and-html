<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String[] arrayOfLists = {
        "This is sample output", "java", "html", "css", "java", 
        "javascript with html", "html", "javascript", "css", 
        "java", "c++", "what is java", "what is javascript", 
        "what is html"
    };

    String searchString1 = request.getParameter("searchString").toLowerCase();
    StringBuilder options = new StringBuilder();

    for (String list : arrayOfLists) {
        if (list.toLowerCase().contains(searchString1)) {
            options.append("<option value='").append(list).append("'>").append(list).append("</option>");
        }
    }

    out.print(options.toString());
%>

