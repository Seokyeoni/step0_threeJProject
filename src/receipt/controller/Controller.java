package receipt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import receipt.model.PeopleDAO;
import receipt.model.Service;
import receipt.model.dto.PeopleDTO;
import receipt.model.dto.ReceiptDTO;

public class Controller extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");

		try {
			if (command.equals("peopleLogin")) {
				peopleLogin(request, response);
			} else if (command.equals("peopleInsert")) {
				peopleInsert(request, response);
			} else if (command.equals("peopleDelete")) {
				peopleDelete(request, response);
			} else if (command.equals("receiptInsert")) {
				receiptInsert(request, response);
			} else if (command.equals("receiptUpdate")) {
				receiptUpdate(request, response);
			} else if (command.equals("receiptSearch")) {
				receiptSearch(request, response);
			} else if (command.equals("receiptArray")) {
				receiptArray(request, response);
			} else if (command.equals("receiptTotalSearch")) {
				receiptTotalSearch(request, response);
			} else {
			}

		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			s.printStackTrace();
		}
	}

	public void peopleLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";
		String id = request.getParameter("loginid");
		String pw = request.getParameter("loginpw");

		try {
			boolean x = PeopleDAO.peopleLogin(request.getParameter("loginid"), request.getParameter("loginpw"));
			if (x == true) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				url = "peopleJSP/loginSucc.jsp";
			} else {
				request.setAttribute("login", "로그인 실패");
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void peopleInsert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		PeopleDTO people = new PeopleDTO(id, password, name, age, gender);
		try {
			boolean result = Service.addPeople(people);
			if (result) {
				request.setAttribute("people", people);
				request.setAttribute("successMsg", "축하합니다! 가입되셨습니다!");
				url = "peopleJSP/insertSucc.jsp";
			} else {
				request.setAttribute("errorMsg", "재시도 부탁드립니다");
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", "이미 존재하는 ID입니다." + "<br>" + "재시도 부탁드립니다.");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void peopleDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			String peopleId = request.getParameter("peopleId");
			if (Service.deletePeople(peopleId)) {
				request.setAttribute("peopleAll", Service.getAllPeople());
			} else {
				request.setAttribute("errorMsg", "재시도 부탁드립니다");
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", "신청하신 정보가 있어 지금은 탈퇴가 불가합니다");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptInsert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		String personId = request.getParameter("personId");
		String foodExp = request.getParameter("foodExp");
		String transExp = request.getParameter("transExp");
		String shopExp = request.getParameter("shopExp");
		String leisureExp = request.getParameter("leisureExp");
		String teleExp = request.getParameter("teleExp");

		ReceiptDTO receipt = new ReceiptDTO(personId, foodExp, transExp, shopExp, leisureExp, teleExp);

		try {
			boolean result = Service.insertReceipt(receipt);
			if (result) {
				request.setAttribute("receipt", receipt);
				request.setAttribute("totalMoney",
						Integer.parseInt(receipt.getFoodExp()) + Integer.parseInt(receipt.getTransExp())
								+ Integer.parseInt(receipt.getShopExp()) + Integer.parseInt(receipt.getLeisureExp())
								+ Integer.parseInt(receipt.getTeleExp()));
				url = "receiptJSP/receiptView.jsp";
			} else {

			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptSearch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			ReceiptDTO receipt = Service.getReceipt(request.getParameter("personId1"));
			request.setAttribute("receipt", receipt);
			request.setAttribute("totalMoney",
					Integer.parseInt(receipt.getFoodExp()) + Integer.parseInt(receipt.getTransExp())
							+ Integer.parseInt(receipt.getShopExp()) + Integer.parseInt(receipt.getLeisureExp())
							+ Integer.parseInt(receipt.getTeleExp()));
			url = "receiptJSP/receiptView.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptArray(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		try {
			request.setAttribute("receiptArray", Service.getArrayReceipt());
			url = "receiptJSP/receiptTableList.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptTotalSearch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			request.setAttribute("receiptTotal", Service.getTotalReceipt(request.getParameter("personId2")));
			url = "receiptJSP/receiptTotalChart3.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptUpdateReq(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		try {
			request.setAttribute("receipt", Service.getReceipt(request.getParameter("personId")));
			url = "receiptUpdate.jsp";
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void receiptUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		try {
			String personId = request.getParameter("personId");
			String foodExp = request.getParameter("foodExp");
			String transExp = request.getParameter("transExp");
			String shopExp = request.getParameter("shopExp");
			String leisureExp = request.getParameter("leisureExp");
			String teleExp = request.getParameter("teleExp");

			Service.updateReceipt(personId, foodExp, transExp, shopExp, leisureExp, teleExp);
			request.setAttribute("receipt", Service.getReceipt(request.getParameter("personId")));
			url = "receiptJSP/receiptView.jsp";
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
