package notice.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	public static Connection getConnection() throws Exception {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="hr";
		String pw="123456";

		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pw);
		return conn;
	}

}
