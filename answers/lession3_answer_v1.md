
使用原生sql写

```
-- 查询贷款快照  t1
select * from ods_minibank.minibank_loan_loan where ods_insert_date <= '20220103';

-- 使用udf查看分区是否存在 todo

-- 贷款总笔数

select count(*) from t1; 

-- 已还清贷款总笔数

-- 归还贷款次数表 t2
select count(*) as pay_count,loan_id from ods_minibank.minibank_loan_loanpayment where ods_insert_date <= '20220103' group by loan_id;

-- 需要归还的次数表 t3
select id, payment_periods  from ods_minibank.minibank_loan_loan where ods_insert_date <= '20220103';

select count(*) from t3 join t2 on t2.loan_id = t3.id where t2.pay_count = t3.payment_periods

```

使用easy sql写
```

```