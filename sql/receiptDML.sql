Delete from people;
Delete from receipt;

insert into people values('test1','1234','tester','male','99');
insert into people values('test2','1234','tester','male','99');
insert into receipt values(receipt_id_seq.nextval,'test1','10000','30000','30000','30000','40000');
insert into receipt values(receipt_id_seq.nextval,'test2','5000','30000','20000','15000','60000');

commit;

SELECT * from people;
SELECT * from receipt;