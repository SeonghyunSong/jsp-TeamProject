package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/**==============================================
 * 패키지명  cs.dit
 * 파일명 : LoginDao.java
 * 작성자 : 송성현
 * 변경이력 :
 *  2022-5-3/최초작성/송성현
 * 
 * 프로그램 설명:
 *     login 테이블과 연동하는 프로그램
 *     - insert(LoginDto)
 *     - list()
 * ============================================ */
public class LoginDao {
   
   //dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
	      
	      Context initCtx = new InitialContext();
	      
	      Context envCtx = (Context) initCtx.lookup("java:comp/env");
	      
	      DataSource ds = (DataSource) envCtx.lookup("jdbc/song1db");
	      
	      Connection con = ds.getConnection();
	      
	      return con;
	   }
	   public void insert(LoginDto dto) {
	      String sql = "INSERT INTO login(ID,NAME,PWD,EMAIL,GENDER) VALUES(?, ?, ?, ?, ?)";
	      
	      try(
	            Connection con = getConnection();
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            )
	      {
	         pstmt.setString(1, dto.getId());
	         pstmt.setString(2, dto.getName());
	         pstmt.setString(3, dto.getPwd());
	         pstmt.setString(4, dto.getEmail());
	         pstmt.setString(5, dto.getGender());
	         
	         pstmt.executeUpdate();
	      } catch (Exception e) {
	         e.printStackTrace();
	         
	      }
	      

	   }
	   
	   public ArrayList<LoginDto> list(){
	      String sql = "SELECT * FROM login";
	      ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();
	      
	      try (  Connection con = getConnection();
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery(sql);
	            )
	      {
	         while(rs.next()) {
	            LoginDto dto = new LoginDto();
	            
	            dto.setId(rs.getString("id"));
	            dto.setName(rs.getString("name"));
	            dto.setPwd(rs.getString("pwd"));
	            dto.setEmail(rs.getString("email"));
	            dto.setGender(rs.getString("gender"));

	            
	            dtos.add(dto);
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return dtos;   
	   }
	   
	   public LoginDto selectOne(String id) {
		   String sql = "SELECT * FROM login WHERE id=?";
		   LoginDto dto = new LoginDto();
		   
		   try( Connection con = getConnection();
				   PreparedStatement pstmt = con.prepareStatement(sql);
				   )
		   { pstmt.setString(1, id);
		       try(ResultSet rs = pstmt.executeQuery();)
		       {
		    	   rs.next();
		    	   
		    	   dto.setId(id);
		    	   dto.setName(rs.getString("name"));
		    	   dto.setPwd(rs.getString("pwd"));
		    	   dto.setEmail(rs.getString("email"));
		    	   dto.setGender(rs.getString("gender"));

		       }catch (Exception e) {
		    	   e.printStackTrace();
		       }
		   
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
	   return dto;
	   
	}

 public void update(LoginDto dto) {
	 String sql = "UPDATE login SET name = ?, pwd = ?, email = ? WHERE id = ?";
	 try (
			 Connection con = getConnection();
			 PreparedStatement pstmt = con.prepareStatement(sql);
	 )
	 {
		 pstmt.setString(1, dto.getName());
		 pstmt.setString(2, dto.getPwd());
		 pstmt.setString(3, dto.getEmail());
		 pstmt.setString(4, dto.getId());
		 pstmt.executeUpdate();
		 
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
 }
 public void delete(String id) {
	 String sql = "DELETE FROM login WHERE id =?";
	 
	 try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			 )
	 {
		 pstmt.setString(1, id);
		 pstmt.executeUpdate();
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
	 
	 
 }
}