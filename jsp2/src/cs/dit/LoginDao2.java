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
public class LoginDao2 {
   
   //dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
	      
	      Context initCtx = new InitialContext();
	      
	      Context envCtx = (Context) initCtx.lookup("java:comp/env");
	      
	      DataSource ds = (DataSource) envCtx.lookup("jdbc/song1db");
	      
	      Connection con = ds.getConnection();
	      
	      return con;
	   }
	   public void insert(LoginDto2 dto) {
	      String sql = "INSERT INTO board(ID,NAME,TITLE,CONTENT) VALUES(?, ?, ?, ?)";
	      
	      try(
	            Connection con = getConnection();
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            )
	      {
	         pstmt.setString(1, dto.getId());
	         pstmt.setString(2, dto.getName());
	         pstmt.setString(3, dto.getTitle());
	         pstmt.setString(4, dto.getContent());
	         
	         
	         pstmt.executeUpdate();
	      } catch (Exception e) {
	         e.printStackTrace();
	         
	      }
	      

	   }
	   
	   public ArrayList<LoginDto2> list(){
	      String sql = "SELECT * FROM board";
	      ArrayList<LoginDto2> dtos = new ArrayList<LoginDto2>();
	      
	      try (  Connection con = getConnection();
	            Statement stmt = con.createStatement();
	            ResultSet rs = stmt.executeQuery(sql);
	            )
	      {
	         while(rs.next()) {
	            LoginDto2 dto = new LoginDto2();
	            
	            dto.setId(rs.getString("id"));
	            dto.setName(rs.getString("name"));
	            dto.setTitle(rs.getString("title"));
	            dto.setContent(rs.getString("content"));
	       
	            
	            dtos.add(dto);
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return dtos;   
	   }
	   
	   public LoginDto2 selectOne(String id) {
		   String sql = "SELECT * FROM board WHERE id=?";
		   LoginDto2 dto = new LoginDto2();
		   
		   try( Connection con = getConnection();
				   PreparedStatement pstmt = con.prepareStatement(sql);
				   )
		   { pstmt.setString(1, id);
		       try(ResultSet rs = pstmt.executeQuery();)
		       {
		    	   rs.next();
		    	   
		    	   dto.setId(id);
		    	   dto.setName(rs.getString("name"));
		    	   dto.setTitle(rs.getString("title"));
		    	   dto.setContent(rs.getString("content"));
		    	   

		       }catch (Exception e) {
		    	   e.printStackTrace();
		       }
		   
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
	   return dto;
	   
	}

 public void update(LoginDto2 dto) {
	 String sql = "UPDATE board SET name = ?, title = ?, content = ? WHERE id = ?";
	 try (
			 Connection con = getConnection();
			 PreparedStatement pstmt = con.prepareStatement(sql);
	 )
	 {
		 pstmt.setString(1, dto.getName());
		 pstmt.setString(2, dto.getTitle());
		 pstmt.setString(3, dto.getContent());
		 pstmt.setString(4, dto.getId());
		 pstmt.executeUpdate();
		 
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
 }
 public void delete(String id) {
	 String sql = "DELETE FROM board WHERE id =?";
	 
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