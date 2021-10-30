<%@page import="java.sql.*"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    String doctor = "Medical Researcher";
    String category = request.getParameter("category");
    
    int doctorhsh = doctor.hashCode();
    int categoryhsh = category.hashCode();
    
    
    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into mr values(?,?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,address);
    ps.setString(6,mobile);
    ps.setInt(7,doctorhsh);
    ps.setInt(8,categoryhsh);
    ps.setString(9,"Pending");
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("mr.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("mrreg.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>