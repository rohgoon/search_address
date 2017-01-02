-- 우편번호
DROP SCHEMA IF EXISTS post;

-- 우편번호
CREATE SCHEMA post;

-- 우편번호
CREATE TABLE post.post (
	zipcode   CHAR(5)     NULL COMMENT '우편번호', -- 우편번호
	sido      VARCHAR(20) NULL COMMENT '시도', -- 시도
	sigungu   VARCHAR(20) NULL COMMENT '시군구', -- 시군구
	doro      VARCHAR(80) NULL COMMENT '도로', -- 도로
	building1 INT(5)      NULL COMMENT '건물번호1', -- 건물번호1
	building2 INT(5)      NULL COMMENT '건물번호2' -- 건물번호2
)
COMMENT '우편번호';

-- 시도 인덱스
CREATE INDEX idx_post_sido
	ON post.post( -- 우편번호
		sido ASC -- 시도
	);

-- 도로 인덱스
CREATE INDEX idx_post_doro
	ON post.post( -- 우편번호
		doro ASC -- 도로
	);
	
