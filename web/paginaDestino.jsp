<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
<meta http-equiv="Content-Type"
 content="text/html; charset=UTF-8">
 <title>Pagina Destino</title>
 </head>
 <body>
 <%@ page import="negocios.Calcular" %>
 <%
 // Extracción de los parámetros recibidos
 String nombre = request.getParameter("nombre");
 String sueldoDia= request.getParameter("sueldoDia");
 String diasTrab = request.getParameter("diasTra");
 Double Stotal;
 Calcular calcula = new Calcular(sueldoDia, diasTrab);
 calcula.sueldototal();
 %>
 <h2> Resultado </h2>
 <p> Hola <%= nombre %> </p>
 <table cellspacing="3" cellpadding="3" border="1" >
 <tr>
 <td align="right"> Tu Sueldo total fué: </td>
 <td> <%= calcula.getSueldo() %> Pesos </td>
 </tr>
 </table>
 <form action="index.jsp" method="post">
 <input type="submit" value="Regresar">
 </form>
 </body>
</html>