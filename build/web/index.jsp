<%-- 
    Document   : index
    Created on : 22/10/2022, 07:38:32 PM
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="apis.api_empleados" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <form>
            <div class="container">
                <form class="form-group" action="sr_empleados" method="get">
                <label for="lbl_id">id</label>
                <input  type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <label for="lbl_nombres">Nombres</label>
                <input  type="text" name="txt_nombres" id="txt_nombres" class="form-control">
                <label for="lbl_apellidos">Apellidos</label>
                <input  type="text" name="txt_apellidos" class="form-control" id="txt_apellidos">
                <label for="lbl_direccion">Direccion</label>
                <input  type="text" name="txt_direccion" class="form-control" id="txt_direccion">
                <label for="lbl_telefono">Telefono</label>
                <input  type="text" name="txt_telefono" id="txt_telefono" class="form-control">
                <label for="lbl_nit">Puesto</label>
                <select name="drop_genero" id="drop_genero" class="form-control">
                    
                </select>
                <label for="lbl_dpi">DPI</label>
                <input  type="text" name="txt_dpi" id="txt_dpi" class="form-control">
                <label for="lbl_fn">Fecha de Nacimiento</label>
                <input  type="date" name="txt_fn" id="txt_fn" class="form-control">
                <label for="lbl_fi">Fecha de Ingreso</label>
                <input  type="date" name="txt_fi" id="txt_fi" class="form-control">
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Agregar</button>
                <button name="btn_modificar" id="btn_modificar" class="btn btn-success" value="modificar">Modificar</button>
                <button name="btn_eliminar" id="btn_eliminar" class="btn btn-danger" value="eliminar">Eliminar</button>
            </div>
        </form>
        <table class="table table-striped">
            <thead>
                <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Direccin</th>
                <th>Telefono</th>
                <th>Puesto</th>
                <th>DPI</th>
                <th>Fecha de Nacimiento</th>
                <th>Fecha de Registro</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <%
                    api_empleados api_c = new api_empleados();
                    DefaultTableModel tabla = new DefaultTableModel();
                    tabla = api_c.leer();
                    for(int t = 0;t<tabla.getRowCount();t++){
                        out.println("<tr>");
                        out.println("<td>"+ tabla.getValueAt(t, 0) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 1) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 2) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 3) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 4) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 5) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 6) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 7) +"</td>");
                        out.println("<td>"+ tabla.getValueAt(t, 8) +"</td>");
                        out.println("</tr>");                    
                    }
                %>
                </tr>
            </tbody>
        </table>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
 