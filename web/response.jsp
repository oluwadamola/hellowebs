<%-- 
    Document   : response
    Created on : Jun 29, 2020, 2:00:45 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: blue;
            }
        </style>
    </head>
    <body>
        <h1>User Response</h1>
        <jsp:useBean id="mybean" scope="session" class="hello.TextInput"/>
        
        <jsp:setProperty name="mybean" property="name" 
                                value="<%= request.getParameter("name") %>"/>
        
        <h1> Hello,  <jsp:getProperty name="mybean" property="name"/> </h1>                       
    </body>
</html>
