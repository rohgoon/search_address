package kr.or.dgit.bigdata.search_address.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import kr.or.dgit.bigdata.search_address.dto.Post;
import kr.or.dgit.bigdata.search_address.service.PostService;

public class PostServiceTest {
	private static PostService postService;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		postService = PostService.getInstance();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		postService = null;
	}

	/*@Test
	public void testFindZipcodeBySidoAndDoro() {
		Post post = postService.findZipcodeBySidoAndDoro("%대구%", "%중앙%");
		Assert.assertNotNull(post);
	}*/
	@Test 
	public void testFindAllBySidoAndDoro() {
		
		Map<String, Object> map = new HashMap<>();
		map.put("sido", "%대구%");
		map.put("doro", "%파계%");		
		List<Post> post = postService.findAllBySidoAndDoro(map);
		Assert.assertNotNull(post);
	}

}
