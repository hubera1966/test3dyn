package test3dyn;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerServlet")

public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		String customerName;
		customerName = request.getParameter("customerName");
		String customerAddress = request.getParameter("customerAddress");
		String telNo;
		telNo = request.getParameter("telNo");
		String email = request.getParameter("email");
		String costPKG = request.getParameter("costPKG");

	try{
		File file = new File("/usr/share/nginx/html/xyz.txt");
		FileWriter fstream = new FileWriter(file,true);
	try (BufferedWriter out = new BufferedWriter(fstream)) {
		out.write(customerName+" "+customerAddress+" "+telNo+" "+email+" "+costPKG);
		out.newLine();
	}
	pw.println("File is created successfully");
	pw.println("<a href=/test3dyn/index.jsp> Startseite </a>");
	}

	catch (IOException e){
		System.err.println("Error: " + e.getMessage());
		}
	}
}

