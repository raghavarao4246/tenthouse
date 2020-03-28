<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@page import="javax.servlet.http.*" %>
        <%@page import="java.sql.*" %>
        <%     
            Class.forName("com.mysql.jdbc.Driver");
        	String url ="jdbc:mysql://mydemoserver7140.mysql.database.azure.com:3306/owner1?useSSL=true&requireSSL=false";
        	Connection con = DriverManager.getConnection(url, "myadmin7140@mydemoserver7140", "qwerty@123");
            Statement stmt=con.createStatement();
            String str=(String) session.getAttribute("pno");
            String q1="select location from customer where phonenumber='"+ str + "';";
            ResultSet rs=stmt.executeQuery(q1);
            int i=0;
            if( rs.next())
            {
                String q2="select shopname from owners where location='"+ str + "';";
                ResultSet rs1=stmt.executeQuery(q2);
                while(rs1.next())
                {
                
                }
            }
            
        %>
    </body>
</html>
