<%-- 
    Document   : quiz
    Created on : May 15, 2018, 10:29:05 AM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.poo.Historico"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.poo.Questao"%>
<%@page import="br.com.fatecpg.poo.Usuario"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.fatecpg.poo.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>Hello, world!</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>   
        <main class="container" role="main">
            <div class="jumbotron">
                <h4>Quiz</h4>
                <%  Date horario = new Date();
                    Usuario usuario = new Usuario("nome");
                    Quiz quiz = new Quiz(horario, usuario);
                    double pontuacao = 0d;
                    ArrayList<Questao> questoes = quiz.getQuestoes();
                    for (int i = 0; i < 4; i++) {
                        Questao q = questoes.get(i);
                %>
                <fieldset class="form-group">
                    <legend><%=q.getPergunta()%></legend>
                    <% for (int j = 0; j < 4; j++) {%>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="<%=q.getPergunta()%>" id="optionsRadios1" value="<%=q.getAlternativas()[j]%>">
                            <%=q.getAlternativas()[j]%>
                        </label>
                    </div>
                    <% if (request.getParameter(q.getAlternativas()[j]) == q.getResposta()) {
                                pontuacao++;
                            }
                        }
                    %>
                </fieldset>
                <%}%>
                <button type="submit" class="btn btn-primary" value="Enviar">Submit</button>
                <%
                    Historico h = new Historico();
                    quiz.setPontuacao(pontuacao);
                    h.addHistorico(usuario, quiz);
                %>
                <p></p>
            </div>
        </main>
        <%@include file="WEB-INF/jspf/scripts.jspf"%>
    </body>
</html>

