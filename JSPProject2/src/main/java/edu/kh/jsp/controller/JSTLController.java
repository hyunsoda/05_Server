package edu.kh.jsp.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 상대주소여도 무조건 /로 시작하기
@WebServlet("/jstl/main")
public class JSTLController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 단순히 페이지 이동만 시켜줄 것
		// 요청 위임만 필요
		req.getRequestDispatcher("/WEB-INF/views/jstl/main.jsp").forward(req, resp);
									// 경로 , WEB-INF 기준
	
		
	}
	
	
	
}
