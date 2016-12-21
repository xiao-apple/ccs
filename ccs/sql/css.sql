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

--�˵���
create table t_bill
(
	id Integer primary key,
	sn varchar2(40), --��XX�ڣ�һ�����·�����ʾ����2007-06
	amount Float, --�˵��ܶ�
	payoff Integer  --�Ƿ���
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
