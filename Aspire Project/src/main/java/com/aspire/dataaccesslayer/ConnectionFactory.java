package com.aspire.dataaccesslayer;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.DriverManager;
public class ConnectionFactory {

	public static Connection getConnection() {
		Connection con = null;
		FileInputStream dbPropertiesStream = null;
		String propertiesPath = "C:\\Aspire project\\db.properties";
		Properties dbProperties = null;
		try {
			dbPropertiesStream = new FileInputStream(propertiesPath);
			dbProperties = new Properties();
			dbProperties.load(dbPropertiesStream);
			String mysqlconnectionurl = (dbProperties.getProperty("MYSQL_DB_URL"));
			String strUserName = dbProperties.getProperty("MYSQL_DB_USERNAME");
			String strPassword = dbProperties.getProperty("MYSQL_DB_PASSWORD");
			con = DriverManager.getConnection(mysqlconnectionurl, strUserName, strPassword);
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}

		return con;
	}
	

}
