package back.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Util.DBUtil;
import back.entity.Xwen;


public class XwenDao {
	public List<Xwen> findAll(String str) throws Exception {
		Connection conn = null;
		List<Xwen> list = new ArrayList<Xwen>();
		Xwen x = null;
		try {
			conn = DBUtil.getConnection();
			//String sql = "select id,title,content from new_lwh176  where title like ?";
			//String sql = "select id,title,content from new_lwh0310  where title like ? or to_char(content) like ?";
			//String sql = "select id,title,content from t_lwh261  where title like ?";
			String sql = "select id,title,content from new_100 where title like ? or content like ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, '%'+str+'%');
			ps.setString(2, '%'+str+'%');
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				x = new Xwen();
				x.setId(rs.getInt("id"));
				x.setTitle(rs.getString("title"));
				x.setContent(rs.getString("content"));
				list.add(x);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	public Xwen findTitle(int id1) throws Exception {
		Connection conn = null;
		Xwen x = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select id,title,content from new_100 where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id1);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				x= new Xwen();
				x.setId(rs.getInt("id"));
				x.setTitle(rs.getString("title"));
				x.setContent(rs.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return x;
	}
}
