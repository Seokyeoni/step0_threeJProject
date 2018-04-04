package receipt.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import receipt.model.dto.PeopleDTO;
import receipt.model.util.DBUtil;

public class PeopleDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();

	// 로그인 검색
	public static boolean peopleLogin(String id, String password) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select id, password from people where id =? and password =?");

			pstmt.setString(1, id);
			pstmt.setString(2, password);

			int result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static boolean addPeople(PeopleDTO people) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("insert into people values(?, ?, ?, ?, ?)");
			pstmt.setString(1, people.getId());
			pstmt.setString(2, people.getPassword());
			pstmt.setString(3, people.getName());
			pstmt.setString(4, people.getGender());
			pstmt.setString(5, people.getAge());
			int result = pstmt.executeUpdate();

			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static boolean deletePeople(String peopleId) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("delete from people where people_id=?");
			pstmt.setString(1, peopleId);
			int result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static PeopleDTO getPeople(String peopleId) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		PeopleDTO people = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from recipient where people_id=?");
			pstmt.setString(1, peopleId);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				people = new PeopleDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4),
						rset.getString(5));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return people;
	}

	public static ArrayList<PeopleDTO> getAllPeople() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<PeopleDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from people");
			rset = pstmt.executeQuery();

			list = new ArrayList<PeopleDTO>();
			while (rset.next()) {
				list.add(new PeopleDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4),
						rset.getString(5)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return list;
	}
}
