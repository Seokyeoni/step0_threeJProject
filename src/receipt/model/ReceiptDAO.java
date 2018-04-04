package receipt.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import receipt.model.dto.ReceiptDTO;
import receipt.model.util.DBUtil;

public class ReceiptDAO {

	static ResourceBundle sql = DBUtil.getResourceBundle();

	public static boolean insertReceipt(ReceiptDTO receipt) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("insertReceipt"));
			pstmt.setString(1, receipt.getPersonId());
			pstmt.setString(2, receipt.getFoodExp());
			pstmt.setString(3, receipt.getTransExp());
			pstmt.setString(4, receipt.getShopExp());
			pstmt.setString(5, receipt.getLeisureExp());
			pstmt.setString(6, receipt.getTeleExp());

			int result = pstmt.executeUpdate();

			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static boolean updateReceipt(String personId, String foodExp, String transExp, String shopExp,
			String leisureExp, String teleExp) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();

			pstmt = con.prepareStatement(sql.getString("updateReceipt"));
			pstmt.setString(1, foodExp);
			pstmt.setString(2, transExp);
			pstmt.setString(3, shopExp);
			pstmt.setString(4, leisureExp);
			pstmt.setString(5, teleExp);
			pstmt.setString(6, personId);

			int result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static ReceiptDTO getReceipt(String personId) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReceiptDTO receipt = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectReceipt"));
			pstmt.setString(1, personId);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				receipt = new ReceiptDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return receipt;
	}

	public static ArrayList<ReceiptDTO> getArrayReceipt() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<ReceiptDTO> list = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectArrayReceipt"));
			rset = pstmt.executeQuery();

			list = new ArrayList<ReceiptDTO>();
			while (rset.next()) {
				list.add(new ReceiptDTO(rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5),
						rset.getString(6), rset.getString(7)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return list;
	}

	public static ReceiptDTO getTotalReceipt() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReceiptDTO totalReceipt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectTotalReceipt"));
			rset = pstmt.executeQuery();
			if (rset.next()) {
				totalReceipt = new ReceiptDTO(rset.getString(1), rset.getString(2), rset.getString(3),
						rset.getString(4), rset.getString(5));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return totalReceipt;
	}

}
