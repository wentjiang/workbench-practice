``` sql

-- backend: postgres
-- config: PYTHONPATH=/tmp/app/dataplat/lib/deps.zip

-- check=ensure_partition_exists(${__step__}, ods_mini_bank.mini_bank_loan_loan, 20220103)

-- target=variables
select true as __create_output_table__

-- target=temp.loan
select * from ods_mini_bank.mini_bank_loan_loan where ods_insert_date <= '20220103'

-- target=temp.loan_payment_count
select count(*) as payment_count, loan_id from ods_mini_bank.mini_bank_loan_loanpayment where ods_insert_date <= '20220103' group by loan_id

-- target=temp.loan_finish_count
select count(*) from loan inner join loan_payment_count on loan.id = loan_payment_count.loan_id where loan.payment_periods = loan_payment_count.payment_count

-- target=temp.loan_count
select count(*) from loan

-- target=log.show_result 
select * from loan_count

-- target=log.show_result 
select * from loan_finish_count

-- target=output.sample.loan_count
select * from loan_count

-- target=output.sample.loan_finish_count
select * from loan_finish_count

```