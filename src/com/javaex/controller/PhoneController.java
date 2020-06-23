package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.PhoneDao;
import com.javaex.util.WebUtil;
import com.javaex.vo.PersonVo;

@WebServlet("/pbc")
public class PhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/pbc 겟방식 호출 되었습니다.");
		
		String action = request.getParameter("action");
		System.out.println(action);
		
		//리스트일때
		if("list".equals(action)) {
			System.out.println("list");
			
			PhoneDao dao = new PhoneDao();
			List<PersonVo> pList = dao.getPersonList();
			
			//데이터 리퀘스트에 추가
			request.setAttribute("personList", pList);
			
			//포워드 하는 방법
			WebUtil.forword(request, response, "/WEB-INF/list.jsp");//아래와 같은 뜻.
			/*RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/list.jsp");
			rd.forward(request, response);*/
			
			
		}else if("wform".equals(action)) {
			System.out.println("wform");
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/writeForm.jsp");
			rd.forward(request, response);
			
			
		//등록일때
		}else if("insert".equals(action)) {
			System.out.println("번호저장");
			String name = request.getParameter("name");
			String hp = request.getParameter("hp");
			String company = request.getParameter("company");
			
			PersonVo vo = new PersonVo(name, hp, company);
			
			PhoneDao dao = new PhoneDao();
			
			dao.personInsert(vo);
			
			WebUtil.redirect(request, response, "/phoneBook2/pbc?action=list");//아래와 같은 뜻
//			response.sendRedirect("/phoneBook2/pbc?action=list");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
