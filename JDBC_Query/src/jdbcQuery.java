import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;


public class jdbcQuery {

	public static void main(String[] args) throws SQLException {

		//for connection and retrieval of data purposes
		Connection myConnection = null;
		Statement myStatement = null;
		ResultSet myResultSet = null;
		
		//modify these as needed
		String rootUsername = "root";
		String rootPassword = "root";
		String dbURL = "//localhost:3306/demo";
		String connectionDatabase = "jdbc:mysql:".concat(dbURL);
		String dbTable = "macRulesTable"; //for table name in our db schema
		
		try {
			//attempt to connect to mysql database
			myConnection = DriverManager.getConnection(connectionDatabase, rootUsername, rootPassword);			
			System.out.println("Database connection successful!\n");
			myStatement = myConnection.createStatement();	//generate statement based on established connection
			
			//execute bd extract query
			myResultSet = myStatement.executeQuery("select * from ".concat(dbTable));
			//process result set to obtain the list of mac addresses with their respective blocked status
			while (myResultSet.next()) {
				System.out.println(myResultSet.getString("mac") + ", " + myResultSet.getString("block"));
			}
			//to add INSERT UPDATE  DELETE
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		finally { //cleanup
			if (myResultSet != null) {
				myResultSet.close();
			} if (myStatement != null) {
				myStatement.close();
			} if (myConnection != null) {
				myConnection.close();
			}
		}
	}

}
