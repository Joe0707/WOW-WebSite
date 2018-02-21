package Util;

import java.sql.Connection;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;



public class DBUtil {
	private static BasicDataSource ds;
	static{
		try {
			Properties prop = new Properties();
			prop.load(DBUtil.class.getClassLoader().getResourceAsStream("config.properties"));
			String driverName = prop.getProperty("drivername");
			String url=prop.getProperty("url");
			String username = prop.getProperty("username");
			String password = prop.getProperty("password");
			int maxactive = Integer.parseInt(prop.getProperty("maxactive"));
			int maxwait = Integer.parseInt(prop.getProperty("maxwait"));
			ds = new BasicDataSource();
			ds.setDriverClassName(driverName);
			ds.setUrl(url);
			ds.setUsername(username);
			ds.setPassword(password);
			ds.setMaxActive(maxactive);
			ds.setMaxWait(maxwait);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws Exception{
		try{
		return ds.getConnection();
		}catch(Exception e){
			throw e;
		}
	}
	
	
	
}
