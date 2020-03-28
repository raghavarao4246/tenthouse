<%-- 
    Document   : putitems
    Created on : 27-Oct-2018, 15:28:24
    Author     : m srinivas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="javax.servlet.http.*" %>
        <%@page import="java.sql.*" %>
        <%
            String naoi1=request.getParameter("chairs");
            String naoi2=request.getParameter("tents");
            String naoi3=request.getParameter("tables");
            String naoi4=request.getParameter("fans");
            
            String noi1=request.getParameter("nofchairs");
            String noi2=request.getParameter("noftents");
            String noi3=request.getParameter("noftables");
            String noi4=request.getParameter("noffans");
            
            String cost1=request.getParameter("cost1");
            String cost2=request.getParameter("cost2");
            String cost3=request.getParameter("cost3");
            String cost4=request.getParameter("cost4");
            
            Class.forName("com.mysql.jdbc.Driver");
            String url ="jdbc:mysql://mydemoserver7140.mysql.database.azure.com:3306/owner1?useSSL=true&requireSSL=false";
            Connection con = DriverManager.getConnection(url, "myadmin7140@mydemoserver7140", "qwerty@123");
            Statement stmt=con.createStatement();
            String str=(String) session.getAttribute("pno");
            String query1="insert into owneritems values('"+str+ "','"+ naoi1 + "','"+ naoi2 + "','"+ naoi3 + "','"+ naoi4 + "')";
            String query2="insert into owneritemcount values('"+str+ "','"+ noi1 + "','"+ noi2 + "','"+ noi3 + "','"+ noi4 + "')";
            String query3="insert into owneritemcost values('"+str+ "','"+ cost1 + "','"+ cost2 + "','"+ cost3 + "','"+ cost4 + "')";

            int k1=stmt.executeUpdate(query1);
            int k2=stmt.executeUpdate(query2);
            int k3=stmt.executeUpdate(query3);
            if(k1==1&&k2==1&&k3==1)
                out.println("items inserted");  
        %>
        <button onclick="location.href='owner_items.jsp';">Back Home</button>
    </body>
</html>
