<%@page import="java.util.ArrayList"%>
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
            
            <% 
                               ArrayList<Integer> random = new ArrayList<>();
                               int contador = 0;
                               while(contador < Quiz.getTest().size()){
                                   int r = (int)(Math.random() * Quiz.getTest().size());
                                   if(!random.contains(r)){
                                       random.add(r);
                                       ++contador;
                                   }
                               }
                            %>
            <%for (int i = 0; i < Quiz.getTest().size(); i++){%>
            <% Question q = Quiz.getTest().get(random.get(i)); %>
                <h3><%= q.getQuestion() %></h3>
                <%for (int j = 0; j < q.getAlternatives().length; j++){%>
                    <input type="radio" name="<%= q.getQuestion() %>" value="<%= q.getAlternatives()[j] %>"/>
                    <%= q.getAlternatives()[j] %>
                <%}%>
            <%}%>
            <hr />
            <input type="submit" name="tested" value="Enviar"/>
        </form>
    </body>
</html>
