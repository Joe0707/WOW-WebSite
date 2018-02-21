package UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import Util.DBUtil;

public class UserDao {
	public List<String> findallaccount() throws Exception{
		List<String>list = new ArrayList<String>();
		Connection conn = null;
		try {
			conn=DBUtil.getConnection();
			String sql = "SELECT ACCOUNT FROM WOW";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				String account = rs.getString("account");
				list.add(account);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		return list;
	}
	public boolean add(UserInfo user) throws Exception{
		Connection conn = null;
		int len = 0;
		try {
			
			String sql = "INSERT INTO WOW "
					+"(ID,ACCOUNT,PASSWORD,NICKNAME,GENDER,AGE,LOCATION,CITY) "
					+ "VALUES "
					+ "(SE_WOW.NEXTVAL,?,?,?,?,?,?,?)";
			conn = DBUtil.getConnection();
			PreparedStatement ps = conn.prepareCall(sql);
			String account = user.getAccount();
			String password = user.getPassword();
			String nickname = user.getNickname();
			String gender = user.getGender();
			int age = user.getAge();
			String location = user.getLocation();
			String city = user.getCity();
			ps.setString(1, account);
			ps.setString(2, password);
			ps.setString(3, nickname);
			ps.setString(4, gender);
			ps.setInt(5, age);
			ps.setString(6, location);
			ps.setString(7, city);
			len = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		if(len>0){
			return true;
		}else{
			return false;
		}
	}
	public boolean reduce(String account,int gold) throws Exception{
		boolean result= false;
		Connection conn = null;
		int len = 0;
		try {
			conn=DBUtil.getConnection();
			String getgold = "SELECT GOLD FROM WOW "
					+ "WHERE ACCOUNT = ?";
			PreparedStatement psgold = conn.prepareStatement(getgold);
			psgold.setString(1, account);
			ResultSet rs = psgold.executeQuery();
			rs.next();
			int oggold = rs.getInt("gold");
			if(oggold<gold){
				result=false;
				return result;
			}
			String sql = "UPDATE WOW "
					+ "SET GOLD = GOLD-? "
					+ "WHERE ACCOUNT= ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, gold);
			ps.setString(2, account);
			len = ps.executeUpdate();
			result =true;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		return result;
	}
	public boolean checkgamedate(String account) throws Exception{
		Date da = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(da);
		String gamedate = null;
		Connection conn = null;
		try {
			conn=DBUtil.getConnection();
			String getdate = "SELECT GAMEDATE FROM WOW "
					+ "WHERE ACCOUNT = ?";
			PreparedStatement ps = conn.prepareStatement(getdate);
			ps.setString(1, account);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				gamedate = rs.getString("gamedate");
			}
			if(!date.equals(gamedate)){
				String update = "UPDATE WOW "
						+ "SET GAMEDATE = ?,GAME = ? "
						+ "WHERE ACCOUNT = ? ";
				PreparedStatement updateps = conn.prepareStatement(update);
				updateps.setString(1, date);
				updateps.setInt(2, 2);
				updateps.setString(3, account);
				int len = updateps.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		if(date.equals(gamedate)){
			return false;
		}else{
			return true;
		}
		
		
	}
	public int checkgamecount(String account) throws Exception{
		Connection conn = null;
		int count = 0;
		try {
			conn=DBUtil.getConnection();
			String sql = "SELECT GAME FROM WOW "
					+ "WHERE ACCOUNT = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, account);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				count = rs.getInt("game");
			}
		}catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					throw new Exception(e);
				}
			}
	}
		return count;
	}
	public boolean checkgame(String account) throws Exception{
		Connection conn = null;
		int len = 0;
		//int count = 0;
		try {
			conn=DBUtil.getConnection();
		//	String sql = "SELECT GAME FROM WOW "
		//			+ "WHERE ACCOUNT = ?";
			//PreparedStatement ps = conn.prepareStatement(sql);
			//ps.setString(1, account);
		//	ResultSet rs = ps.executeQuery();
			//if(rs.next()){
			//	count = rs.getInt("game");
			//}
			//if(count>0){
				String update ="UPDATE WOW "
						+ "SET GAME = GAME-1 "
						+ "WHERE ACCOUNT= ?";
				PreparedStatement updateps = conn.prepareStatement(update);
				updateps.setString(1, account);
				len = updateps.executeUpdate();
			//}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					throw new Exception(e);
				}
			}
		}
		if(len<=0){
			return false;
		}else{
			return true;
		}
	}
	public boolean goldrecord(int gold,String account) throws Exception{
		Connection conn = null;
		try {
			conn=DBUtil.getConnection();
			String sql = "UPDATE WOW "
					+ "SET GOLD = GOLD+? "
					+ "WHERE ACCOUNT= ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, gold);
			ps.setString(2, account);
			int len = ps.executeUpdate();
			if(len>0){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
	}
	public boolean modify(UserInfo user) throws Exception{
		Connection conn = null;
		try {
			conn=DBUtil.getConnection();
			String sql ="UPDATE wow "
					+ "SET NICKNAME = ?,GENDER=?,LOCATION=?,CITY=? "
					+ "WHERE ACCOUNT = ?";
			String account = user.getAccount();
			String nickname=user.getNickname();
			String gender = user.getGender();
			String location = user.getLocation();
			String city=user.getCity();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, nickname);
			ps.setString(2, gender);
			ps.setString(3, location);
			ps.setString(4, city);
			ps.setString(5, account);
			int len = ps.executeUpdate();
			if(len>0){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
	}
	public boolean checklog(String account,String password) throws Exception{
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "SELECT * FROM wow "
					+ "WHERE ACCOUNT=? AND PASSWORD = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, account);
			ps.setString(2, password);
			System.out.println("112");
			ResultSet rs = ps.executeQuery();
			System.out.println("111");
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		
	}
	public UserInfo finduser(String account) throws Exception{
		Connection conn = null;
		UserInfo user = new UserInfo();
		try {
			conn=DBUtil.getConnection();
			String sql="SELECT PASSWORD,NICKNAME,GENDER,AGE,GOLD,LOCATION,CITY FROM WOW "
					+ "WHERE ACCOUNT=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, account);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				String password = rs.getString("password");
				String nickname = rs.getString("nickname");
				String gender =rs.getString("gender");
				int age = rs.getInt("age");
				String location = rs.getString("location");
				int gold = rs.getInt("gold");
				String city = rs.getString("city");
				user.setAccount(account);
				user.setAge(age);
				user.setGender(gender);
				user.setLocation(location);
				user.setNickname(nickname);
				user.setGold(gold);
				user.setCity(city);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
		return user;
	}
	public boolean checksign(String account) throws Exception{
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			Date date = new Date();
			SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
			String str =sdf.format(date);
			String checksql ="SELECT SIGN FROM WOW "
					+ "WHERE ACCOUNT = ?";
			PreparedStatement ps = conn.prepareStatement(checksql);
			ps.setString(1, account);
			ResultSet rs = ps.executeQuery();
			String ogsign =null;
			if(rs.next()){
				ogsign = rs.getString("sign");
			}
			if(ogsign!=null&&ogsign.equals(str)){
				return false;
			}else{
				String sql ="UPDATE WOW "
						+ "SET SIGN = ? "
						+ "WHERE ACCOUNT = ? ";
				PreparedStatement updateps = conn.prepareStatement(sql);
				updateps.setString(1, str);
				updateps.setString(2, account);
				updateps.execute();
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
	}
	public int sign(String account) throws Exception{
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			Random rand = new Random();
			int gold = rand.nextInt(10)+5;
			String sql = "UPDATE WOW "
					+ "SET GOLD = GOLD+? "
					+ "WHERE ACCOUNT = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, gold);
			ps.setString(2, account);
			int len = ps.executeUpdate();
			if(len>0){
				return gold;
			}else{
				return -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}finally{
			if(conn!=null){
				conn.close();
			}
		}
	}
	public static void main(String[] args) throws Exception {
		String account="JACK";
		System.out.println(111);
		UserDao dao = new UserDao();
		System.out.println(dao.sign(account));
	}
}
