drop table t_admin;
drop table t_applyUser;
drop table t_bill;
drop table t_card;
drop table t_credit;
drop table t_log;
drop table t_trade;
drop table t_user;

 --����Ա��
create table t_admin
(
	id Integer primary key,
	username varchar2(20),
	password varchar2(20),
	securityCode varchar2(10), --��ȫ���룬������Ա�ȼ�
	partyName varchar2(20) --�������ŵ�����
);
create table t_admin
(
	id Integer primary key,
	username varchar(20),
	password varchar(20),
	securityCode varchar(10), 
	partyName varchar(20) 
);

--�����û��ı�
create table t_applyUser
(
	id Integer primary key,
	applyDate date, --��������
	applyLevel varchar2(10), --����ȼ�
	applyState varchar2(10), --����״̬
	userId Integer,  --������
	adminId Integer, --������(����Ա)
	remark varchar2(200)
);
create table t_applyUser
(
	id Integer primary key,
	applyDate date, 
	applyLevel varchar(10), 
	applyState varchar(10), 
	userId Integer,  
	adminId Integer, 
	remark varchar(200)
);

--�˵���
create table t_bill
(
	id Integer primary key,
	sn varchar(40), --��XX�ڣ�һ�����·�����ʾ����2007-06
	amount Float, --�˵��ܶ�
	payoff Integer  --�Ƿ���
);
create table t_bill
(
	id Integer primary key,
	sn varchar(40), 
	amount Float, 
	payoff Integer  
);
--���ÿ���
create table t_card
(
	id Integer primary key,
	cardNo varchar2(20) unique, --���ţ��ɳ������ĳ�ֹ�����з���
	creditLevel varchar2(40), --���õȼ�
	balance Float, --�������ܶ��������Ϊ��������ʾ�����д��
	password varchar2(20), --����
	cardState varchar2(10), --��״̬�����������ᡢ��ʧ
	createTime date, --��������
	successret Integer, --�ɹ���Ǯ���� 
	userId Integer, --������
	adminId Integer,
	remark varchar2(200)
);
create table t_card
(
	id Integer primary key,
	cardNo varchar(20) unique, 
	creditLevel varchar(40), 
	balance Float, 
	password varchar(20), 
	cardState varchar(10), 
	createTime date, 
	successret Integer,  
	userId Integer, 
	adminId Integer,
	remark varchar(200)
);


--���õȼ�
create table t_credit
(
	creditLevel varchar2(40) primary key, --�𿨡����������ʿ�����ͨ��
	maxMoney Float, --���͸֧���
	billDate Integer, --��������,�˵���,��ÿ��5��
	payDate Integer, --��������,�����գ���ÿ��25��
	interestRate Float, --��������,�������5�������10Ԫ
	remark varchar2(200)
);
create table t_credit
(
	creditLevel varchar(40) primary key, 
	maxMoney Float, 
	billDate Integer, 
	payDate Integer, 
	interestRate Float, 
	remark varchar(200)
);

--��־��
create table t_log
(
	id Integer primary key,
	type varchar2(20), --��־����
	operTime date,  --����ʱ��
	addr varchar2(20), --�����ص�
	adminName varchar2(20),--����Ա����
	remark varchar2(200) 
);
create table t_log
(
	id Integer primary key,
	type varchar(20), 
	operTime date,  
	addr varchar(20),
	adminName varchar(20),
	remark varchar(200) 
);

--���ױ�
create table t_trade
(
	id Integer primary key,
	type varchar2(10), --�������ͣ����ѡ�����
	tradeTime date, --����ʱ��
	tradeAddress varchar2(100), --���׵ص�
	amount Float, --���׽��
	cardId Integer,
	adminId Integer,
	remark varchar2(200)
);
create table t_trade
(
	id Integer primary key,
	type varchar(10), 
	tradeTime date, 
	tradeAddress varchar(100), 
	amount Float, 
	cardId Integer,
	adminId Integer,
	remark varchar(200)
);

create table t_user
(
	id Integer primary key,
	name varchar2(20), --�û�����
	password varchar2(20), --�û�����
	idCardNo varchar2(20), --���֤����
	sex varchar2(4), --�Ա�
	birthday varchar2(20), --����
	phone varchar2(12), --��ϵ�绰
	hasCard varchar2(10), --�Ƿ�ֿ�
	homeAddress varchar2(200), --��ͥ��ַ
	mailbox varchar2(200), --����
	company varchar2(50), --������λ
	salary Float, --������
	workingAddress varchar2(200), --������ַ
	workingPhone varchar2(12), --�����绰
	post varchar2(20),  --ְλ
	remark varchar2(200)
);

create table t_user
(
	id Integer primary key,
	name varchar(20), 
	password varchar(20), 
	idCardNo varchar(20), 
	sex varchar(4), 
	birthday varchar(20), 
	phone varchar(12), 
	hasCard varchar(10), 
	homeAddress varchar(200), 
	mailbox varchar(200), 
	company varchar(50), 
	salary Float, 
	workingAddress varchar(200), 
	workingPhone varchar(12), 
	post varchar(20),  
	remark varchar(200)
);


