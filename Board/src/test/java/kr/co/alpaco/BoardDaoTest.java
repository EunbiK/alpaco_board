package kr.co.alpaco;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;


//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BoardDaoTest {
	@Test
	public void test() throws Exception {
	    Class.forName("org.mariadb.jdbc.Driver"); // 마리아DB

	    Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/board", "root", "1");// 마리아DB
	    System.out.println(con);
	    }
//	@Inject
//	private SqlSessionFactory sqlFactory;
//	
//	
//	@Test
//	public void selectAll() throws Exception {
//		
//	}
}
