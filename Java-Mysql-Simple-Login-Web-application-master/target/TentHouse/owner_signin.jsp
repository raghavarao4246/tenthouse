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
        <%@page import="java.lang.*"%>
        <%
            String a=request.getParameter("firstname");
            String b=request.getParameter("secondname");
            String c=request.getParameter("phonenumber");
            String d=request.getParameter("pin");
            String e=request.getParameter("email");
            String f=request.getParameter("shopname");
            String g=request.getParameter("location");
            String h=request.getParameter("address");
            String i=request.getParameter("gender");
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url ="jdbc:mysql://mydemoserver7140.mysql.database.azure.com:3306/owner1?useSSL=true&requireSSL=false";
                Connection con = DriverManager.getConnection(url, "myadmin7140@mydemoserver7140", "qwerty@123");
                Statement stmt=con.createStatement();
                String query="insert into owners values('"+ a + "','"+ b + "','"+ c + "','"+ d + "','"+ e + "','"+ f + "','"+ g + "','"+ h + "','"+ i + "')";
                int k=stmt.executeUpdate(query);
                if(k==1)
                    response.sendRedirect("cust_login.html");
                else
                    out.println("data not inserted");
            }
            catch(Exception E)
            {
                out.println(E);
            }
            
        %>
        
    </body>
</html>
