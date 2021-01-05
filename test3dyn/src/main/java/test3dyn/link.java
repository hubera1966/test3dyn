package test3dyn;

import java.io.IOException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/link")

public class link extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public link() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	       PrintWriter writer = response.getWriter();
	        writer.println("<html><a href=/test3dyn/index.jsp> Startseite </a></html>");
	        writer.flush();
	}

	

}
