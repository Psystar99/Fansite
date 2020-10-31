package servlet;
import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.model.*;
/*mvc3*/
@WebServlet("/BeerSelect")
public class BeerSelect extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public BeerSelect() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      
      String p = request.getParameter("pic");
      BeerExpert be = new BeerExpert();
      
      List<String> result = (List)be.getList_photo(p);
     

      request.setAttribute("styles", result);
      
      RequestDispatcher view = request.getRequestDispatcher("gallery_read_pic.jsp");
      view.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   }

}