<%-- 
    Document   : insertdata.jsp
    Created on : Jul 30, 2018, 8:45:39 PM
    Author     : ovi
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.*"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
           String mobile = request.getParameter("mobile");
           String password = request.getParameter("password");
            
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ser?zeroDateTimeBehavior=convertToNull", "root", "");
            Statement st = con.createStatement();
            
            
            if(mobile != null && password != null)
           {
               ResultSet rs = st.executeQuery("SELECT name,mobile,password FROM register where mobile='"+mobile+"'and password='"+password+"'");
               if(rs.next())
               {
                   out.println("Welcome!");
                    if (session.isNew() ){                 
                    session.setAttribute("m",mobile);
                    session.setAttribute("p",password);
                    
                    } 
               }
               else{
                   out.println("Wrong User");
               }
           } 
            else{
                out.println("Data missing");
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }


            
            %>
            
            <p><a href="index.jsp">Homepage</a></p>
    </body>
</html>
