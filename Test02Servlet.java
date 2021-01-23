package test02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test02Servlet")
public class Test02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		
		String name = request.getParameter("name");
			out.print("이름"+ name);
		String jumin_1 = request.getParameter("jumin_1");
		String jumin_2 = request.getParameter("jumin_2");
			out.print("<br>주민번호"+jumin_1+"-"+jumin_2);
		String id = request.getParameter("id");
			out.print("<br>아이디"+id);
		String pwd = request.getParameter("pwd");
			out.print("<br>패스워드"+pwd);
		String email = request.getParameter("email");
		String email_addr = request.getParameter("email_addr");
			out.print("<br>이메일"+email+"@"+email_addr);
		String zip = request.getParameter("zip");
			out.print("<br>우편번호"+zip);
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
			out.print("<br>주소"+addr1+"&nbsp;"+addr2);
		String phone = request.getParameter("phone");
			out.print("<br>핸드폰번호"+phone);
		String job = request.getParameter("job");
			out.print("<br>직업"+job);
		String chk_mail = request.getParameter("chk_mail");
			out.print("<br>수신여부"+chk_mail);
		String interests[] = request.getParameterValues("interest");
			out.print("<br>관심분야 ");
			if(interests == null) {
				out.print("선택된 항목이 없습니다.");
			}else {
				for(String interest : interests) {
					out.print(interest + " ");
				}
			}
			
			out.print("<br><a href='javascript:history.go(-1)'>다시</a>");
			out.print("</body></html>");
			out.close();
		
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
