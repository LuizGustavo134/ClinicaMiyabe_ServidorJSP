<%-- 
    Document   : editarpesq
    Created on : 27 de nov. de 2025, 09:20:38
    Author     : alunocmc
--%>

<%@page import="DAO.EditarDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
             <%
                  String nome=request.getParameter("nome");
                  String mail = request.getParameter("em");
                  int pg1=Integer.parseInt(request.getParameter("r1"));
                  int pg2=Integer.parseInt(request.getParameter("r2"));
                  int pg3=Integer.parseInt(request.getParameter("r3"));
                  int pg4=Integer.parseInt(request.getParameter("r4"));
                %>
                <% EditarDAO edit = new EditarDAO(); %>
                <a href="<% edit.Editar(nome,mail,pg1,pg2,pg3,pg4);%>"Salvar Alterações</a>
                 <a href="MenuPesquisa.html">Voltar</a>
         
        
    </body>
</html>
