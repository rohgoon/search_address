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

-- ���� �ε���
CREATE INDEX idx_post_doro
	ON post.post( -- �����ȣ
		doro ASC -- ����
	);

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/������.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��⵵.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
-- -----------------
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��󳲵�.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/���ϵ�.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;

LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/���ֱ�����.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/�뱸������.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/����������.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/�λ걤����.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/����Ư����.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/����Ư����ġ��.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��걤����.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��õ������.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/���󳲵�.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/����ϵ�.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/����Ư����ġ��.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��û����.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;
LOAD data LOCAL INFILE 'C:/workspace/workspace_java/search_address/DataFiles/��û�ϵ�.txt' INTO table post
character set 'euckr' fields TERMINATED by '|' IGNORE 1 lines
(@zipcode, @sido, @d, @sigungu , @d, @d, @d, @d, @doro, @d, @d, @building1, @building2, @d, @d, @d, @d, @d, @d ,@d, @d, @d, @d, @d, @d, @d)
set zipcode=@zipcode, sido=@sido, sigungu=@sigungu, doro=@doro, building1=@building1, building2=@building2;


select zipcode, sido, sigungu, doro, building1, building2 from post where sido like '%대구%' and doro like '%파계%';