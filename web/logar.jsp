<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String login = request.getParameter("username");
    session.setAttribute("loginUsuario", login);
%>

<%
    if(request.getParameter("entrar") != null){
        Usuario u = new Usuario();
        u.setUsername(request.getParameter("username"));
        Bd.getUsuario().add(u);
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
