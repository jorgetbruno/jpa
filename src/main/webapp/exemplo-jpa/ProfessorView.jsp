<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="lab.academico.Professor"%>
<html>

  <head>
    <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <title>Professor</title>
          </head>

          <body>
            <div class="container">
              <div class="row">
                <h1>
                  <a href="professor">Professor</a>
                  <a href="/exercicio">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                  </a>
                </h1>
              </div>
              <form>
                <table class="table">
                  <tr>
                    <td class="h3">Matrícula</td>
                    <td>
                      <input name="matricula" class="form-control"></td>
                    </tr>
                    <tr>
                      <td class="h3">Nome:</td>
                      <td>
                        <input name="nome" class="form-control"></td>
                      </tr>
                    </table>
                    <button name="operacao" value="incluir" class="btn btn-primary">Incluir</button>
                    <button name="operacao" value="excluir" class="btn btn-danger">Excluir</button>
                    <button name="operacao" value="alterar" class="btn btn-warning">Alterar</button>
                  </form>
                  <b>${msg}</b>
                  <hr>
                    <table class="table" border="1">
                      <tr>
                        <th>Matrícula</th>
                        <th>Nome</th>
                        <th>Ações</th>
                      </tr>
                      <%
      ArrayList<Professor> professores =
        (ArrayList<Professor>) request.getAttribute("professores");
      for (Professor professor : professores) {
      %>
                        <tr>
                          <td><%=professor.getMatricula()%></td>
                          <td><%=professor.getNome()%></td>
                          <td>
                            <a href="professor?operacao=excluir&matricula=<%=professor.getMatricula()%>">Excluir</a>
                          </td>
                        </tr>
                      <%}%>
                    </table>
                  </div>
                </body>

              </html>
