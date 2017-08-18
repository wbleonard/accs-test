<!DOCTYPE HTML>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ACCS Test</title>
    </head>
    <body>

        <%
            Integer hitsCount = (Integer) application.getAttribute("hitCounter");
            if (hitsCount == null || hitsCount == 0) {
                /* First visit */
                System.out.println("First fisit");
                hitsCount = 1;
            } else {
                /* Return visit */
                hitsCount++;
                System.out.println("Return visit number " + hitsCount);
            }
            application.setAttribute("hitCounter", hitsCount);
        %>

    <center>
        <h1>Total number of visits: <%= hitsCount%></h1>
    </center>
    <hr>
    <p>
        Served From Server:   <b><%= request.getServerName()%></b><br/>
        Server Port Number:   <b><%= request.getServerPort()%></b><br/>
        Executed From Server: <b><%= java.net.InetAddress.getLocalHost().getHostName()%></b><br/>
        Executed Server IP Address: <b><%= java.net.InetAddress.getLocalHost().getHostAddress()%></b><br/>
        Session ID:    <b><%= session.getId()%></b><br/>
        Session Created:  <b><%= new java.util.Date(session.getCreationTime())%></b><br/>
        Last Accessed:    <b><%= new java.util.Date(session.getLastAccessedTime())%></b><br/>
        Session will go inactive in  <b><%= session.getMaxInactiveInterval()%> seconds</b><br/>
    </p>

</body>
</html>



