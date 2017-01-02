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

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/강원도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/경기도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
-- -----------------
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/경상남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/경상북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/광주광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/대구광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/대전광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/부산광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/서울특별시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/세종특별자치시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/울산광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/인천광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/전라남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/전라북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/제주특별자치도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/충청남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/충청북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;















