<%-- 
    Document   : insertdata.jsp
    Created on : Jul 30, 2018, 8:45:39 PM
    Author     : ovi
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
           String name = request.getParameter("name");
           String mobile = request.getParameter("mobile");
           String password = request.getParameter("password");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
            
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ser?zeroDateTimeBehavior=convertToNull", "root", "");
            Statement st = con.createStatement();
            
            
            if(name != null && mobile != null && password != null && email != null && address != null)
           {
               st.executeUpdate("INSERT INTO register(name,mobile,password,email,address)"
                    + " VALUES('"+name+"','"+mobile+"','"+password+"','"+email+"','"+address+"');");
               //out.println("Data inserted");
               
           } 
            out.println("Welcome new user"+name);
            out.println("Proceed to log in" );
        }
        catch(Exception e)
        {
            out.println(e);
        }
           
            %>
            <p><a href="login.jsp">login</a></p>
    </body>
</html>
