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
        
        <title>Web Quiz</title>
    </head>
    <body>
        
        
        <br/>
        <p class="corpo" align="center">Para jogar o quiz sistema informe o seu login:</p>
        <form method="post" action="logar.jsp">
            <center class="corpo">
                Login:
                <table>
                    <tr>
                    <td><input type="text" name="username" id="username" class="form-control" required><br></td>
                    </tr>
                </table>
                <input type="submit" class="btn btn-dark" name="entrar" value="Entrar">
            </center>
        </form>
        <br/><hr/><br/>
        
        <p class="titulo" align="center">RANK</p>
        <br>
        <%if (tested) { %>
            <hr>
            <h3 class="corpo">Sua porcentagem de acerto foi de: <%= grade %> %</h3>
            <hr>
        <% } %>
        
        
        
    
    </body>
</html>
