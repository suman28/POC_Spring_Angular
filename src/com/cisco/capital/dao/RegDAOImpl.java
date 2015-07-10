package com.cisco.capital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cisco.capital.model.RegistrationVO;
//import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
//import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
//import com.mysql.jdbc.PreparedStatement;
//import com.sun.org.apache.bcel.internal.generic.Select;

@Repository("regDAO")
public class RegDAOImpl implements RegDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	/*
	 * 
	 * 
	 * public static List<RegistrationVO> registrationList = new
	 * ArrayList<RegistrationVO>();
	 * 
	 * 
	 * @PostConstruct public void init(){
	 * 
	 * RegistrationVO registrationVO = new RegistrationVO();
	 * registrationVO.setUserName("suman28");
	 * registrationVO.setFirstName("suman"); registrationVO.setLastName("K");
	 * registrationVO.setPassword("password"); registrationVO.setUserId("s28");
	 * registrationVO.setEmail("sumankotagiri28@gmail.com");
	 * 
	 * 
	 * RegistrationVO registrationVO1 = new RegistrationVO();
	 * registrationVO1.setUserName("ramana27");
	 * registrationVO1.setFirstName("ramana"); registrationVO1.setLastName("V");
	 * registrationVO1.setPassword("password");
	 * registrationVO1.setUserId("r27");
	 * registrationVO1.setEmail("ramanavukoti@gmail.com");
	 * 
	 * 
	 * RegistrationVO registrationVO2 = new RegistrationVO();
	 * registrationVO2.setUserName("maruthi26");
	 * registrationVO2.setFirstName("maruthi");
	 * registrationVO2.setLastName("G");
	 * registrationVO2.setPassword("password");
	 * registrationVO2.setUserId("m26");
	 * registrationVO2.setEmail("maruthigundla@gmail.com");
	 * 
	 * RegistrationVO registrationVO3 = new RegistrationVO();
	 * registrationVO3.setUserName("jagadeesh25");
	 * registrationVO3.setFirstName("jagadeesh");
	 * registrationVO3.setLastName("P");
	 * registrationVO3.setPassword("password");
	 * registrationVO3.setUserId("j25");
	 * registrationVO3.setEmail("jagadeeshpalaniappan@gmail.com");
	 * 
	 * 
	 * registrationList.add(registrationVO);
	 * registrationList.add(registrationVO1);
	 * registrationList.add(registrationVO2);
	 * registrationList.add(registrationVO3); }
	 */

	/*
	 * public List<RegistrationVO> getAllUsers(){ return registrationList; }
	 */

	public List<RegistrationVO> getRegisteredUsers() {

		RegistrationVO registrationVO = null;
		List<RegistrationVO> registrationList = new ArrayList<RegistrationVO>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = jdbcTemplate.getDataSource().getConnection();

			String query = "SELECT FIRST_NAME,LAST_NAME,USER_ID,PASSWORD,RE_PASSWORD,EMAIL_ID,CONTACT_NO,USER_NAME FROM REGISTRATION_TABLE";

			pst = con.prepareStatement(query);

			rs = pst.executeQuery();

			while (rs.next()) {

				registrationVO = new RegistrationVO();
				registrationVO.setFirstName(rs.getString(1));
				registrationVO.setLastName(rs.getString(2));
				registrationVO.setUserId(rs.getString(3));
				registrationVO.setPassword(rs.getString(4));
				registrationVO.setRePassword(rs.getString(5));
				registrationVO.setEmail(rs.getString(6));
				registrationVO.setContactNo(rs.getString(7));
				registrationVO.setUserName(rs.getString(8));
				registrationList.add(registrationVO);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return registrationList;
	}

	// To get the details of selected user

	public RegistrationVO getUser(String userId) {
		RegistrationVO registrationVO = null;
		ResultSet rs = null;
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = jdbcTemplate.getDataSource().getConnection();
			String query = "SELECT FIRST_NAME,LAST_NAME,USER_ID,PASSWORD,RE_PASSWORD,EMAIL_ID,CONTACT_NO,USER_NAME FROM REGISTRATION_TABLE WHERE USER_ID = ?";
			pst = con.prepareStatement(query);
			pst.setString(1, userId);
			rs = pst.executeQuery();
			while (rs.next()) {

				registrationVO = new RegistrationVO();
				registrationVO.setFirstName(rs.getString(1));
				registrationVO.setLastName(rs.getString(2));
				registrationVO.setUserId(rs.getString(3));
				registrationVO.setPassword(rs.getString(4));
				registrationVO.setRePassword(rs.getString(5));
				registrationVO.setEmail(rs.getString(6));
				registrationVO.setContactNo(rs.getString(7));
				registrationVO.setUserName(rs.getString(8));
				// registrationVO.setUserId(rs.getString("USER_ID"));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return registrationVO;
	}

	// To save the registered user into the database
	public void saveUser(RegistrationVO registrationVO) {

		Connection con = null;
		PreparedStatement pst = null;
		String query = "INSERT INTO REGISTRATION_TABLE(FIRST_NAME,LAST_NAME,USER_ID,PASSWORD,RE_PASSWORD,EMAIL_ID,CONTACT_NO,USER_NAME) VALUES(?,?,?,?,?,?,?,?)";
		try {

			con = jdbcTemplate.getDataSource().getConnection();
			pst = con.prepareStatement(query);

			pst.setString(1, registrationVO.getFirstName());
			pst.setString(2, registrationVO.getLastName());
			pst.setString(3, registrationVO.getUserId());
			pst.setString(4, registrationVO.getPassword());
			pst.setString(5, registrationVO.getRePassword());
			pst.setString(6, registrationVO.getEmail());
			pst.setString(7, registrationVO.getContactNo());
			pst.setString(8, registrationVO.getUserName());
			pst.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Save Logic
		/*
		 * List<RegistrationVO> registrationList = new
		 * ArrayList<RegistrationVO>(); registrationList .add(registrationVO);
		 */
	}

	
	public RegistrationVO getUserData(String userId) {
		RegistrationVO registrationVO = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {
			con = jdbcTemplate.getDataSource().getConnection();
			String query = "SELECT FIRST_NAME,LAST_NAME,USER_ID,PASSWORD,RE_PASSWORD,EMAIL_ID,CONTACT_NO,USER_NAME FROM REGISTRATION_TABLE WHERE USER_ID = ?";
			pst = con.prepareStatement(query);
			pst.setString(1, userId);
			rs = pst.executeQuery();
			while (rs.next()) {
				registrationVO = new RegistrationVO();
				registrationVO.setFirstName(rs.getString(1));
				registrationVO.setLastName(rs.getString(2));
				registrationVO.setUserId(rs.getString(3));
				registrationVO.setPassword(rs.getString(4));
				registrationVO.setRePassword(rs.getString(5));
				registrationVO.setEmail(rs.getString(6));
				registrationVO.setContactNo(rs.getString(7));
				registrationVO.setUserName(rs.getString(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return registrationVO;

	}

	public void editUser(RegistrationVO registrationVO) {
		
		  Connection con = null;
		  PreparedStatement pst = null;
		  try {
			  
			  con = jdbcTemplate.getDataSource().getConnection();
			  String query = "UPDATE REGISTRATION_TABLE SET FIRST_NAME=?,LAST_NAME=?,EMAIL_ID=?,PASSWORD=?,RE_PASSWORD=?,CONTACT_NO=?,USER_NAME=? WHERE USER_ID=?";
			  pst = con.prepareStatement(query); 
			  pst.setString(1, registrationVO.getFirstName());
			  pst.setString(2, registrationVO.getLastName());
			  pst.setString(3, registrationVO.getEmail());
			  pst.setString(4, registrationVO.getPassword());
			  pst.setString(5, registrationVO.getRePassword());
			  pst.setString(6, registrationVO.getContactNo());
			  pst.setString(7, registrationVO.getUserName());
			  pst.setString(8, registrationVO.getUserId());
			  
			  pst.executeUpdate();
			 
			 /* while(pst.executeUpdate() > 0){ 
				  registrationVO = new RegistrationVO();
				  registrationVO.setFirstName("FIRST_NAME");
				  registrationVO.setLastName("LAST_NAME");
				  registrationVO.setUserId("USER_ID");
				  registrationVO.setPassword("PASSWORD");
				  registrationVO.setRePassword("RE_PASSWORD");
				  registrationVO.setEmail("EMAIL_ID");
				  registrationVO.setContactNo("CONTACT_NO");
				  registrationVO.setUserName("USER_NAME");
			  
		  }*/
		  } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
	}
	
	// To delete user details
		public void deleteUser(String userId) {
			Connection con = null;
			PreparedStatement pst = null;
			try {
				con = jdbcTemplate.getDataSource().getConnection();
				String query = "DELETE FROM REGISTRATION_TABLE WHERE USER_ID = ?";
				pst = con.prepareStatement(query);
				pst.setString(1, userId);
				pst.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

}
