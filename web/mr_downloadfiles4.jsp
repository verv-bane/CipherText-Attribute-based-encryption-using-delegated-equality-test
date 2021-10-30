<%
    String user = session.getAttribute("email").toString();
    String filename = request.getParameter("filename");
    String owner = request.getParameter("owner");
    String id = request.getParameter("id");
    String skey = request.getParameter("skey");
    
    String doctorhash = session.getAttribute("doctor").toString();
    String categoryhash = session.getAttribute("category").toString();
    
   
    
   
     String height = request.getParameter("height");
     String symptoms = request.getParameter("symptoms");
     String disease = request.getParameter("disease");
     String prate = request.getParameter("prate");
     String location = request.getParameter("location");
     String bloodpressure = request.getParameter("bloodpressure");
     String weight = request.getParameter("weight");
     String mobile = request.getParameter("mobile");
     String doctor = request.getParameter("doctor");
     String category = request.getParameter("category");
     String data = request.getParameter("data"); 
    
     
     String totalcontent ="Filename :"+filename+"\n\n\nHeight:"+height+"\n\n\nSymptoms:"+symptoms+"\n\n\nDisease:"+disease+"\n\n\nPulse Rate:"+prate+"\n\n\nLocation:"+location+"\n\n\nBlood Pressure:"+bloodpressure+"\n\n\nWeight:"+weight+"\n\n\nMobile:"+mobile+"\n\n\nDoctor:"+doctor+"\n\n\nCategory:"+category+"\n\n\n\nData:"+data;
   
     response.setHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
            out.write(totalcontent); 
      
      
    %>	