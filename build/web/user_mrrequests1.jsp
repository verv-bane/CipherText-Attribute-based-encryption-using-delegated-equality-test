<%@page import="delegatedequalitytest.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="delegatedequalitytest.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%

     String user1 = session.getAttribute("email").toString();
String filename = request.getParameter("filename");
String user = request.getParameter("user");
int id = Integer.parseInt(request.getParameter("id"));

String height = null;
String symptoms = null;
String disease = null;
String prate = null;
String location = null;
String bloodpressure = null;
String weight = null;
String mobile = null;
String doctor = null;
String category = null;
String data = null;
String skey = null;





 Connection con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from upload where email = '"+user1+"' ");
        ResultSet rs=pst.executeQuery();
        
        if(rs.next()){
    
      height = rs.getString("height");
      symptoms = rs.getString("symptoms");
      disease = rs.getString("disease");
      prate = rs.getString("prate");
      location = rs.getString("location");
      bloodpressure = rs.getString("bloodpressure");
      weight = rs.getString("weight");
      mobile = rs.getString("mobile");
      doctor = rs.getString("doctor");
      category = rs.getString("category");
      data = rs.getString("cipher");
      skey = rs.getString("skey");
   
        }

 PreparedStatement pst1=con.prepareStatement("update request set height = '"+height+"',symptoms = '"+symptoms+"',disease = '"+disease+"',prate = '"+prate+"',location = '"+location+"',bloodpressure = '"+bloodpressure+"',weight = '"+weight+"',mobile = '"+mobile+"',doctor = '"+doctor+"',category = '"+category+"',data = '"+data+"',skey = '"+skey+"',status = 'Key Sent' where id = "+id+" ");
      pst1.executeUpdate();

     
   Mail m = new Mail();
   String msg ="filename :"+filename+"\nSecret Key:"+skey;
   m.secretMail(msg,filename,user);
   
response.sendRedirect("user_mrrequests.jsp?msg=success");





%>