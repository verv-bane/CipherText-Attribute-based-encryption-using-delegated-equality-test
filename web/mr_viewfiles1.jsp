<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%
String user = session.getAttribute("email").toString();
String filename = request.getParameter("username");
String owneremail = request.getParameter("email");

int id = 0;

    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

    ps.setString(1,user);
    ps.setString(2,filename);
    ps.setString(3,owneremail);
    ps.setString(4,"");
    ps.setString(5,"");
    ps.setString(6,"");
    ps.setString(7,"");
    ps.setString(8,"");
    ps.setString(9,"");
    ps.setString(10,"");
    ps.setString(11,"");
    ps.setString(12,"");
    ps.setString(13,"");
    ps.setString(14,"");
    ps.setString(15,"");
    ps.setString(16,"Pending");
    ps.setInt(17,id);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("mr_viewfiles.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("mr_viewfiles.jsp?msg1=Failed");    
    }




%>