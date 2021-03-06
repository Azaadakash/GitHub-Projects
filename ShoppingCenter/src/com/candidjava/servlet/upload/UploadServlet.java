package com.candidjava.servlet.upload;
import java.io.File;  
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/**
 * Servlet implementation class Uploadservlet
 */

@WebServlet()
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "../WebContent/images/uploads";
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)){
            try {
            	String fname = null;
            	String fsize = null;
            	String ftype = null;
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        fname = new File(item.getName()).getName();
                        fsize = new Long(item.getSize()).toString();
                        ftype = item.getContentType();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + fname));
                    }
                    else {
                    	System.out.println(item.getString());
                    }
                }
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
               request.setAttribute("name", fname);
               request.setAttribute("size", fsize);
               request.setAttribute("type", ftype);
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message","Sorry this Servlet only handles file upload request");
        }
    
        request.getRequestDispatcher("/result.jsp").forward(request, response);
     
    }		
		
	
	}
