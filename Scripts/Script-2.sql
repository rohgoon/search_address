-- �����ȣ
DROP SCHEMA IF EXISTS post;

-- �����ȣ
CREATE SCHEMA post;

-- �����ȣ
CREATE TABLE post.post (
	zipcode   CHAR(5)     NULL COMMENT '�����ȣ', -- �����ȣ
	sido      VARCHAR(20) NULL COMMENT '�õ�', -- �õ�
	sigungu   VARCHAR(20) NULL COMMENT '�ñ���', -- �ñ���
	doro      VARCHAR(80) NULL COMMENT '����', -- ����
	building1 INT(5)      NULL COMMENT '�ǹ���ȣ1', -- �ǹ���ȣ1
	building2 INT(5)      NULL COMMENT '�ǹ���ȣ2' -- �ǹ���ȣ2
)
COMMENT '�����ȣ';

-- �õ� �ε���
CREATE INDEX idx_post_sido
	ON post.post( -- �����ȣ
		sido ASC -- �õ�
	);

-- 한글
CREATE INDEX idx_post_doro
	ON post.post( -- �����ȣ
		doro ASC -- ����
	);

LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/강원도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/경기도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
-- -----------------
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/경상남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/경상북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/광주광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/대구광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/대전광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/부산광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/서울특별시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/세종특별자치시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/울산광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/인천광역시.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/전라남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/전라북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/제주특별자치도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/충청남도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'D:/workspace/workspace_mybatis/search_address/DataFiles/충청북도.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;















