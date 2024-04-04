package edu.kh.test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Controller extends HttpServlet{

	private Member member;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String id = req.getParameter("inputId");

			String pw = req.getParameter("inputPw");

			Member member = new Member(id,pw);

			req.setAttribute("member", member);

			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);

			} catch (Exception e) {

			e.printStackTrace();

			}

			}
		
		
		
	}
	

