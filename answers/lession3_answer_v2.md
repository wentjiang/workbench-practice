
使用easy sql写

```
-- backend: postgres
-- config: PYTHONPATH=/tmp/app/dataplat/lib/deps.zip

-- 使用udf查看分区是否存在
-- check=ensure_partition_exists(${__step__}, ods_mini_bank.mini_bank_loan_loan, 20220103)

-- 查询贷款快照
-- target=temp.loan
select * from ods_minibank.minibank_loan_loan where ods_insert_date <= '20220103';

-- 贷款总笔数
-- target=temp.loan_payment_total_count
select count(*) as payment_count temp.load

-- 归还贷款次数表 t2
-- target=temp.loan_payment_count
select count(*) as pay_count,loan_id from ods_minibank.minibank_loan_loanpayment where ods_insert_date <= '20220103' group by loan_id;

-- 需要归还的次数表 t3
-- target=temp.loan_payment_need_to_pay_times
select id, payment_periods from ods_minibank.minibank_loan_loan where ods_insert_date <= '20220103';

-- 已还清贷款总笔数
select count(*) from temp.loan_payment_need_to_pay_times t3 join temp.loan_payment_count t2 on t2.loan_id = t3.id where t2.pay_count = t3.payment_periods

```
