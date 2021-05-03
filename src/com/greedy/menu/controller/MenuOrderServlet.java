package com.greedy.menu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MenuOrderServlet
 */
@WebServlet("/menu/order")
public class MenuOrderServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test입니다.");
		
		/*
		 * 서블릿은 크게 3가지 일은 한다고 했다.
		 * 1. 요청 받은 값 확인 및 검증
		 * 2. 비즈니스 로직 처리
		 * 3. 응답 페이지 생성 후 응답
		 */
		
		/* 1. 요청에 대한 처리 */
		request.setCharacterEncoding("utf-8");
		
		String menuName = request.getParameter("menuName");
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		System.out.println("menuName : " + menuName);
		System.out.println("amount : " + amount);
		
		/* 2. 비즈니스 로직 처리 */
		int orderPrice = 0;
		
		switch(menuName) {
			case "햄버거" : orderPrice = 6000 * amount; break;
			case "짜장면" : orderPrice = 7000 * amount; break;
			case "짬뽕" : orderPrice = 8000 * amount; break;
			case "순대국" : orderPrice = 5000 * amount; break;
		}
		
		/* 3. 응답 페이지를 생성 후 응답 */ // object 타입으로 담아서 넘긴다.
		request.setAttribute("orderPrice", orderPrice);
		
		/* 서블릿 컨테이너 내부에서 forward의 전송 */
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/5_response.jsp");
		rd.forward(request, response);
		
	}

}
