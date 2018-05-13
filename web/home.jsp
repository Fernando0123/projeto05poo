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
         <link href="css/newcss.css" rel="stylesheet" type="text/css">
        <title>Web Quiz</title>
    </head>
    <body>
        
        
        <br/>
       <p class="corpo" align="center">Para jogar o quiz sistema informe o seu login:</p>
        <form method="post" action="logar.jsp">
            <center class="corpo">
                    <input type="text" name="username" id="username" class="form-control" required><br>
                <input type="submit" class="btn btn-dark" name="entrar" value="Entrar">
            </center>
        </form>
        <br/><hr/><br/>
        
       
        <br>
        <%if (tested) { %>
            <hr>
            <h3 class="corpo">Sua porcentagem de acerto foi de: <%= grade %> %</h3>
            <hr>
        <% } %>
        
          <h1>Últimos testes realizados &emsp; &emsp; &emsp; Melhores notas</h1>
        
        <table id="t1" border =1 >
            <tr>
    <th>Nome</th>   
    <th>Nota</th>  
</tr>
       <%  for (int i = 0; i <11; i++) { %> 
<tr>
 
<td>Nome usuário</td>
<td><%  %></td>

</tr>
    <%   } %> 
        <table id="t2" border =1 >
            <tr>
    <th>Nome</th>   
    <th>Nota</th>  
</tr>
       <%  for (int i = 0; i <11; i++) { %> 
<tr>
<td>Nome usuário</td>
<td>Nota usuário</td>
</tr>
    <%   } %> 
        </table>
        
    
    </body>
</html>
