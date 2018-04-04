package receipt.model;

import java.sql.SQLException;
import java.util.ArrayList;

import com.google.gson.Gson;

import receipt.exception.NotExistException;
import receipt.model.dto.PeopleDTO;
import receipt.model.dto.ReceiptDTO;

public class Service {

	public static boolean insertReceipt(ReceiptDTO receipt) {
		boolean result = false;
		try {
			result = ReceiptDAO.insertReceipt(receipt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static ReceiptDTO getReceipt(String personId) throws SQLException, NotExistException {
		ReceiptDTO receipt = ReceiptDAO.getReceipt(personId);

		if (receipt == null) {
			throw new NotExistException("검색한 영수증 데이터가 존재하지 않습니다");
		}
		return receipt;
	}

	public static ArrayList<ReceiptDTO> getArrayReceipt() throws SQLException, NotExistException {
		ArrayList<ReceiptDTO> arrayReceipt = ReceiptDAO.getArrayReceipt();
		if(arrayReceipt == null) {
			throw new NotExistException("검색한 영수증 데이터가 존재하지 않습니다");
		} else {
		} 
		return arrayReceipt;
	}

	public static ArrayList<ReceiptDTO> getTotalReceipt(String personId) throws SQLException, NotExistException {
		ReceiptDTO receipt = ReceiptDAO.getReceipt(personId);
		ReceiptDTO totalReceipt = ReceiptDAO.getTotalReceipt();
		ArrayList<ReceiptDTO> arrayReceipt = new ArrayList<ReceiptDTO>();
		if (receipt == null) {
			throw new NotExistException("검색한 영수증 데이터가 존재하지 않습니다");
		} else {
			arrayReceipt.add(receipt);
			arrayReceipt.add(totalReceipt);
		}
		return arrayReceipt;
	}

	public static boolean updateReceipt(String personId, String foodExp, String transExp, String shopExp,
			String leisureExp, String teleExp) throws SQLException {
		return ReceiptDAO.updateReceipt(personId, foodExp, transExp, shopExp, leisureExp, teleExp);
	}

	public static void notExistPeople(String peopleId) throws NotExistException, SQLException {
		PeopleDTO people = PeopleDAO.getPeople(peopleId);
		if (people == null) {
			throw new NotExistException("검색하신 가입자 정보가 없습니다.");
		}
	}

	public static ArrayList<PeopleDTO> getAllPeople() throws SQLException {
		return PeopleDAO.getAllPeople();
	}

	public static PeopleDTO getPeople(String peopleId) throws SQLException, NotExistException {
		PeopleDTO people = PeopleDAO.getPeople(peopleId);
		if (people == null) {
			throw new NotExistException("검색하신 가입자 정보가 없습니다.");
		}
		return people;
	}

	public static boolean addPeople(PeopleDTO people) throws SQLException {
		return PeopleDAO.addPeople(people);
	}

	public static boolean deletePeople(String peopleId) throws SQLException, NotExistException {
		notExistPeople(peopleId);
		boolean result = PeopleDAO.deletePeople(peopleId);
		if (!result) {
			throw new NotExistException("가입하신 people 정보 삭제 실패");
		}
		return result;
	}

}
