<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIZ - Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>QUIZ</h2>
        <form action="home.jsp">
            <%for (int i = 0; i < Quiz.getTest().size(); i++){%>
                <% Question q = Quiz.getTest().get(i); %>
                <h3><%= q.getQuestion() %></h3>
                <%for (int i2 = 0; i2 < q.getAlternatives().length; i2++){%>
                    <input type="radio" name="<%= q.getQuestion() %>" value="<%= q.getAlternatives()[i2] %>"/>
                    <%= q.getAlternatives()[i2] %>
                <%}%>
            <%}%>
            <hr />
            <input type="submit" name="tested" value="Enviar"/>
        </form>
    </body>
</html>
