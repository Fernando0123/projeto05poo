<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean tested = false;
    double grade = 0.0;
    
    if (request.getParameter("tested") != null) {
        tested = true;
        int count = 0;
        
        for (int i = 0; i < Quiz.getTest().size(); i++) {
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());
            
            if (q.getAnswer().equals(userAnswer)) {
                count++;
            }
        }
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>Home</h2>
        <%if (tested) {%>
            <hr />
            <h3>Sua nota foi: <%= grade%>%</h3>
            <hr />
        <% } %>
        <h3><a href="quiz.jsp"><button>Testar-se</button></a></h3>
    </body>
</html>
