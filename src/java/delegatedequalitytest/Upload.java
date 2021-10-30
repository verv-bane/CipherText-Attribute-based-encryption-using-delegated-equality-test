/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package delegatedequalitytest;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author java2
 */
public class Upload extends HttpServlet {

    private static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection con;
            PreparedStatement pstm = null;
            PreparedStatement pstm1 = null;
             String username = "";
             String height = "";
             String symptoms = "";
            String disease = "";
            String prate = "";
            String location = "";
            String bloodpressure = "";
            String weight = "";
            String mobile = "";
            String doctor = "";
            String category = "";
            String email = (String) request.getSession().getAttribute("email");
          
            try {
                boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
                if (!isMultipartContent) {
                    return;
                }
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                try {
    List<FileItem> fields = upload.parseRequest(request);
    Iterator<FileItem> it = fields.iterator();
    if (!it.hasNext()) {
    return;
    }
    while (it.hasNext()) {
    FileItem fileItem = it.next();
    if (fileItem.getFieldName().equals("username")) {
    username = fileItem.getString();
    System.out.println("username" + username);
    }
    
     if (fileItem.getFieldName().equals("height")) {
    height = fileItem.getString();
    System.out.println("height" + height);
    }
     
      if (fileItem.getFieldName().equals("symptoms")) {
    symptoms = fileItem.getString();
    System.out.println("symptoms" + symptoms);
    }
      
       if (fileItem.getFieldName().equals("disease")) {
    disease = fileItem.getString();
    System.out.println("disease" + disease);
    }
       
        if (fileItem.getFieldName().equals("prate")) {
    prate = fileItem.getString();
    System.out.println("prate" + prate);
    }
    
     if (fileItem.getFieldName().equals("location")) {
    location = fileItem.getString();
    System.out.println("location" + location);
    }
      if (fileItem.getFieldName().equals("bloodpressure")) {
    bloodpressure = fileItem.getString();
    System.out.println("bloodpressure" + bloodpressure);
    }
       if (fileItem.getFieldName().equals("weight")) {
    weight = fileItem.getString();
    System.out.println("weight" + weight);
    }
        if (fileItem.getFieldName().equals("mobile")) {
    mobile = fileItem.getString();
    System.out.println("mobile" + mobile);
    }
         if (fileItem.getFieldName().equals("doctor")) {
    doctor = fileItem.getString();
    System.out.println("doctor" + doctor);
    }

          if (fileItem.getFieldName().equals("category")) {
    category = fileItem.getString();
    System.out.println("category" + category);
    }
    else {

    }
    boolean isFormField = fileItem.isFormField();
    if (isFormField) {
    } else {
    try {
    con = Dbconnection.getConnection();
    pstm = con.prepareStatement("insert into upload values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    
    System.out.println("getD " + fileItem.getName());
    String str = getStringFromInputStream(fileItem.getInputStream());
    //secretkey generating
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    //converting secretkey to String
     byte[] be = secretKey.getEncoded();//encoding secretkey
     String skey = Base64.encode(be);
     System.out.println("converted secretkey to string:" + skey);
     String cipher = new encryption().encrypt(str, secretKey);
    String fname = username.concat(".txt");
 
   int doctorhsh = doctor.hashCode();
   int categoryhsh = category.hashCode();
    
     pstm.setString(1, fname);
     pstm.setDate(2, getCurrentDate());   
     pstm.setString(3, email);
     pstm.setString(4,height);
     pstm.setString(5,symptoms);
     pstm.setString(6,disease);
     pstm.setString(7,skey);
     pstm.setString(8,prate);
     pstm.setString(9,location);
     pstm.setString(10,bloodpressure);
     pstm.setString(11,weight);
     pstm.setString(12,mobile);
     pstm.setString(13,doctor);
     pstm.setString(14,category);
     pstm.setString(15,cipher);
     pstm.setInt(16,doctorhsh);
     pstm.setInt(17,categoryhsh);
     
     
    
     /*Cloud Start*/
     File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input\\"+fname);
     FileWriter fw = new FileWriter(f);
     fw.write(cipher);
     fw.close();
     Ftpcon ftpcon = new Ftpcon();
     ftpcon.upload(f, fname);
     /*Cloud End*/
     int i = pstm.executeUpdate();
     if (i == 1) {
         response.sendRedirect("user_upload.jsp?msg=success");
     } else {
         response.sendRedirect("user_upload.jsp?msg1=failed");
     }
     con.close();
    } catch (Exception e) {
     out.println(e.toString());
    }
    }
    }
    } catch (FileUploadException e) {
    } catch (Exception ex) {
    Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
    }
    } finally {
        out.close();
    }
    }
    }

    private static String getStringFromInputStream(InputStream is) {
        BufferedReader br = null;
        StringBuilder sb = new StringBuilder();
        String line;
        try {
            br = new BufferedReader(new InputStreamReader(is));
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
        } catch (IOException e) {
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                }
            }
        }
        return sb.toString();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private long[] splitToNChar(String str, int len) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
