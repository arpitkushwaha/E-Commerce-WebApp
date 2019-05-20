<%
           if(session==null||session.getAttribute("userid")==null||session.getAttribute("userid").equals(""))
           {
               out.println("<h2>Session Expired. <a href='index.jsp' >relogin</a></h2>");
               return;
           }
 %>