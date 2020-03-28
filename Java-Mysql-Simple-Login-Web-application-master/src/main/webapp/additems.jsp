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
            String phonenumber = request.getParameter("pno");

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
           
            String query1="set SQL_SAFE_UPDATES=0;";
            String query2="UPDATE owneritemcount set count1='"+ noi1 + "',count2='"+ noi2 + "',count3='"+ noi3 + "',count4='"+ noi4 + "' WHERE phonenumber='"+ str + "';";
            String query3="UPDATE owneritemcost set cost1='"+ cost1 + "',cost2='"+ cost2 + "',cost3='"+ cost3 + "',cost4= '"+ cost4 + "' WHERE phonenumber='"+ str + "';";

            
            int k2=stmt.executeUpdate(query2);
            int k3=stmt.executeUpdate(query3);
            if(k2==1&&k3==1)
                out.println("updated");  
        %>
    </body>
</html>
