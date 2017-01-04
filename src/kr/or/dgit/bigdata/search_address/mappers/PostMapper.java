package kr.or.dgit.bigdata.search_address.mappers;

import java.util.List;
import java.util.Map;

import kr.or.dgit.bigdata.search_address.dto.Post;

public interface PostMapper {	
	List<Post> findAllBySidoAndDoro(Map<String, Object> map);
}
