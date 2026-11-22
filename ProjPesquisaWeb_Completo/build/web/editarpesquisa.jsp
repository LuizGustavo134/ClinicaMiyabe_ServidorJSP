<%-- 
    Document   : editarcliente
    Created on : 19 de nov. de 2025, 10:45:36
    Author     : alunocmc
--%>

<%@page import="util.ConectaBD"%>
<%@page import="DAO.EditarDAO"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Registro</title>
    </head>
    <body>
        <% String nom = request.getParameter("nome");
        String email="";
        int resp1=0,resp2=0,resp3=0,resp4=0;
        try{
          
           PreparedStatement sql;
           ResultSet lista;
           Connection conexao;
           conexao=ConectaBD.conectar();
           sql=conexao.prepareStatement("select * from pesquisa where nome=?");
           sql.setString(1, nom);
           lista=sql.executeQuery();
           if (lista.next()){
              email=lista.getString("email");
              resp1=lista.getInt("R1");
              resp2=lista.getInt("R2");
              resp3=lista.getInt("R3");
              resp4=lista.getInt("R4");
            }          
            }catch(Exception e)  {
                 out.println("erro"+e);
            }
             
            %>
            <form method="post" action="editarpesq.jsp">
            Nome: <input type="text" name="nome" value=<%= nom%>><p>
            Email: <input type="text" name="em" value=<%= email%>><p>
            Resposta 1: <input type="text" name="r1" value=<%= resp1%>><p>
            Resposta 2: <input type="text" name="r2" value=<%= resp2%>><p>
            Resposta 3: <input type="text" name="r3" value=<%= resp3%>><p>
            Resposta 4: <input type="text" name="r4" value=<%= resp4%>><p>
                
                <button type="submit" >SALVAR ALTERAÇÕES</button><p>
                
                <a href="MenuPesquisa.html">Voltar</a>
              
    </body>
</html>
