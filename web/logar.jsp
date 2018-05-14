<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Jogador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String login = request.getParameter("name");
    session.setAttribute("loginUsuario", login);
%>

<%
    if(request.getParameter("entrar") != null){
        //me perdi aqui
        Jogador u = new Jogador();
        u.setName(request.getParameter("name"));
        Bd.getJogadores().add(u);
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <script>document.location.href='logado.jsp';</script>
    </body>
</html>
