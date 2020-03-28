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
            String pno=request.getParameter("phone_no");
            String pin=request.getParameter("pin");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url ="jdbc:mysql://mydemoserver7140.mysql.database.azure.com:3306/owner1?useSSL=true&requireSSL=false";
                Connection con = DriverManager.getConnection(url, "myadmin7140@mydemoserver7140", "qwerty@123");
                Statement stmt=con.createStatement();
                String query="select pin from owners where phonenumber='"+ pno + "'";
                ResultSet rs=stmt.executeQuery(query);
                int i=0;
                if( rs.next() && pin.equals(rs.getString(1)))
                {
                    response.sendRedirect("owner_items.jsp");
                }
                else
                {
                   i=1;
                   %>
                        <script> alert("kaboom");</script>
                   <% 
                }
                if(i==1)
                    response.sendRedirect("owner_login.html");
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
        %>
        
    </body>
</html>
