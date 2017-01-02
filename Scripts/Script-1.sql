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
	
