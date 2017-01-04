package kr.or.dgit.bigdata.search_address.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import kr.or.dgit.bigdata.search_address.dto.Post;
import kr.or.dgit.bigdata.search_address.mappers.PostMapper;
import kr.or.dgit.bigdata.search_address.util.MyBatisSqlSessionFactory;

public class PostService {

	private static final Logger logger = Logger.getLogger(PostService.class);

	private final static PostService instance = new PostService();

	public static PostService getInstance() {
		return instance;
	}

	private PostService() {
	}

	public Post findZipcodeBySidoAndDoro(String sido, String doro) {

		if (logger.isDebugEnabled()) {
			logger.debug("findStudentById(String, String) - start");
		}

		SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
		try {
			PostMapper postMapper = sqlSession.getMapper(PostMapper.class);
			return postMapper.findZipcodeBySidoAndDoro(sido, doro);
		} finally {
			sqlSession.close();
		}

	}
	public List<Post> findAllBySidoAndDoro(Map<String, Object> map) {
		if (logger.isDebugEnabled()) {
			logger.debug("findAllBySidoAndDoro(Map<String, Object>) - start");
		}

		SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
		try {
			PostMapper postMapper = sqlSession.getMapper(PostMapper.class);
			return postMapper.findAllBySidoAndDoro(map);
		} finally {
			sqlSession.close();
		}

	}
	

}
