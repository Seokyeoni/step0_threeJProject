/* ???
 * 1. JDBC URL - oracle.jdbc.driver.OracleDriver
 */
package receipt.model.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/* 공유하는 자원은 다수의 client가 사용할 수 있도록 '1회성 초기화 로직'으로 구성
 * 		1. cp => DataSource 커넥션 공유
 * 		2. properties => sql 공유
 * */

public class DBUtil {
	static ResourceBundle resource = null;
	static DataSource source = null;
	
	static{		 
		try {
			Context initContext = new InitialContext();		
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			source = (DataSource)envContext.lookup("jdbc/myoracle");
			resource = ResourceBundle.getBundle("conf/sql");
		} catch (Exception e) {			
			e.printStackTrace();
		}	
	}
	
	public static ResourceBundle getResourceBundle(){
		return resource;
	}
	
	public static Connection getConnection() throws SQLException{
		return source.getConnection();
	}
		
	public  static void close(Connection con,Statement stmt){
		try{
			if(stmt != null){
				stmt.close();
				stmt = null;
			}
			if(con != null){
				con.close();
				con = null;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public  static void close(Connection con, Statement stmt, ResultSet rset){
		try{
			if(rset != null){
				rset.close();	
				rset = null;
			}
			if(stmt != null){
				stmt.close();	
				stmt = null;
			}
			if(con != null){
				con.close();		
				con = null;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}