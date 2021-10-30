<%@page import="java.sql.*"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from user where email= '"+username+"' or mobile = '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

    String user = rs.getString("username");
    session.setAttribute("user",user);
    String email = rs.getString("email");
    session.setAttribute("email",email);
                   
    response.sendRedirect("userhome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("user.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>