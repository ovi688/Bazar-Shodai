<!DOCTYPE html>
<html>
    <head>
        <title>Bazar Shodai</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        ul.lower_greek{
            liststyle-type: lower-greek;
            font-family: sans-serif;
            text-align: left;
            
        }   
        
    </style>
    <%
        String m=(String)session.getAttribute("m"); 
        String p=(String)session.getAttribute("p");
        %>
    <body>
        <h1 style="margin-left: 550px">Bazar Shodai</h1>
        <h3 style="margin-left: 500px"><em>Groceries delivered at your doorstep</em></h3>
        <img src=" " height="" width=""/>
        <br>
        <hr/>
        <br>
        <br>
        <h3>Our product categories</h3>
        <div class="products">
        <ul class="lower_greek">
            <li><a href="fav.jsp">Fruits and Vegetables</a></li>
            <li><a href="maf.jsp">Meat and Fish</a></li>           
            <li><a href="bev.jsp">Beverages</a></li>
            <li><a href="hac.jsp">Home and Cleaning</a></li>
            <li><a href="pc.jsp">Pest Control</a></li>
            <li><a href="of.jsp">Office Products</a></li>
            <li><a href="bp.jsp">Beauty Products</a></li>
            <li><a href="hp.jsp">Health Products</a></li>
            <li><a href="pec.jsp">Pet Care</a></li>
            <li><a href="ha.jsp">Home Appliances</a></li>
            <li><a href="baby.jsp">Baby Care</a></li>
        </ul>
        </div
        
    </body>
</html>