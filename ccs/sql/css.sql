drop table t_admin;
drop table t_applyUser;
drop table t_bill;
drop table t_card;
drop table t_credit;
drop table t_log;
drop table t_trade;
drop table t_user;

 -- ����Ա��
create table t_admin
(
	id Integer primary key,
	username varchar(20),
	password varchar(20),
	securityCode varchar(10),
	partyName varchar(20) 
);

alter table t_admin add email varchar(100) not null;

-- �����û��ı�
create table t_applyUser
(
	id Integer primary key,
	applyDate date, -- ��������
	applyLevel varchar(10), -- ����ȼ�
	applyState varchar(10), -- ����״̬
	userId Integer,  -- ������
	adminId Integer, -- ������(����Ա)
	remark varchar(200)
);

alter table t_applyUser add email varchar(100) not null;

-- �˵���
create table t_bill
(
	id Integer primary key,
	sn varchar(40), -- ��XX�ڣ�һ�����·�����ʾ����2007-06
	amount Float, -- �˵��ܶ�
	payoff Integer  -- �Ƿ���
);

--���ÿ���
create table t_card
(
	id Integer primary key,
	cardNo varchar(20) unique, -- ���ţ��ɳ������ĳ�ֹ�����з���
	creditLevel varchar(40), -- ���õȼ�
	balance Float, -- �������ܶ��������Ϊ��������ʾ�����д��
	password varchar(20), -- ����
	cardState varchar(10), -- ��״̬�����������ᡢ��ʧ
	createTime date, -- ��������
	successret Integer, -- �ɹ���Ǯ���� 
	userId Integer, -- ������
	adminId Integer,
	remark varchar(200)
);


-- ���õȼ�
create table t_credit
(
	creditLevel varchar(40) primary key, -- �𿨡����������ʿ�����ͨ��
	maxMoney Float, -- ���͸֧���
	billDate Integer, -- ��������,�˵���,��ÿ��5��
	payDate Integer, -- ��������,�����գ���ÿ��25��
	interestRate Float, -- ��������,�������5�������10Ԫ
	remark varchar(200)
);

-- ��־��
create table t_log
(
	id Integer primary key,
	type varchar(20), -- ��־����
	operTime date,  -- ����ʱ��
	addr varchar(20), -- �����ص�
	adminName varchar(20),-- ����Ա����
	remark varchar(200) 
);

-- ���ױ�
create table t_trade
(
	id Integer primary key,
	type varchar(10), -- �������ͣ����ѡ�����
	tradeTime date, -- ����ʱ��
	tradeAddress varchar(100), -- ���׵ص�
	amount Float, -- ���׽��
	cardId Integer,
	adminId Integer,
	remark varchar(200)
);

create table t_user
(
	id Integer primary key,
	name varchar(20), -- �û�����
	password varchar(20), -- �û�����
	idCardNo varchar(20), -- ���֤����
	sex varchar(4), -- �Ա�
	birthday varchar(20), -- ����
	phone varchar(12), -- ��ϵ�绰
	hasCard varchar(10), -- �Ƿ�ֿ�
	homeAddress varchar(200), -- ��ͥ��ַ
	mailbox varchar(200), -- ����
	company varchar(50), -- ������λ
	salary Float, -- ������
	workingAddress varchar(200), -- ������ַ
	workingPhone varchar(12), -- �����绰
	post varchar(20),  -- ְλ
	remark varchar(200)
);
