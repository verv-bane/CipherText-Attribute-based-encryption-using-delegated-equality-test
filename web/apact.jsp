<%@page import="java.sql.*"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from ap where email= '"+username+"' or mobile = '"+username+"' and password='"+password+"' and status = 'Activated' ");
    if(rs.next())
    {

   String doctor = rs.getString("doctor");
    session.setAttribute("doctor",doctor);
    String category = rs.getString("category");
    session.setAttribute("category",category);
    String email = rs.getString("email");
    session.setAttribute("email",email);
                   
    response.sendRedirect("aphome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("ap.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in aplogact"+e.getMessage());
    }
%>