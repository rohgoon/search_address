package kr.or.dgit.bigdata.search_address.test;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import kr.or.dgit.bigdata.search_address.util.MyBatisSqlSessionFactory;



public class MybatisSqlSessionTest {
	private static SqlSessionFactory sqlSessionFactory;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		sqlSessionFactory = MyBatisSqlSessionFactory.getSqlSessionFactory();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		sqlSessionFactory = null;

	}

	@Test
	public void testSqlSession() {
		SqlSession session = sqlSessionFactory.openSession();
		Assert.assertNotNull(session);
	}

}
