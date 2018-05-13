<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
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
        
        <title>Web Quiz</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <h3 class="navbar-brand titulo">Web Quiz</h3>
            <a href="home.jsp"><button class="btn btn-outline-light my-2 my-sm-0" type="submit">Sair</button></a>
        </nav>
        <br/>
        <center>
            <p class="titulo">Seja bem-vindo <%= session.getAttribute("loginUsuario") %> :) </p><br>
            <p class="titulo">Para iniciar o quiz, clique abaixo:</p><br>
            <h5><a href="quiz.jsp"><button class="btn btn-outline-light" type="submit" name="entrar">Realizar o Quiz</button></a></h5>
            
            <br>
        
        <%if (tested) { %>
            <hr>
            <h3 class="corpo">Sua porcentagem de acerto foi de: <%= grade %> %</h3>
            <hr>
        <% } %>
        </center>
    
        
    </body>
</html>
