select 'loan_account' as `table`, (select count(1) from minibank_bak.loan_account) as count, (select count(1) from loan_account) as count_new
union
select 'loan_accountchangehistory' as `table`, (select count(1) from minibank_bak.loan_accountchangehistory) as count, (select count(1) from loan_accountchangehistory) as count_new
union
select 'loan_address' as `table`, (select count(1) from minibank_bak.loan_address) as count, (select count(1) from loan_address) as count_new
union
select 'loan_badloan' as `table`, (select count(1) from minibank_bak.loan_badloan) as count, (select count(1) from loan_badloan) as count_new
union
select 'loan_car' as `table`, (select count(1) from minibank_bak.loan_car) as count, (select count(1) from loan_car) as count_new
union
select 'loan_carloan' as `table`, (select count(1) from minibank_bak.loan_carloan) as count, (select count(1) from loan_carloan) as count_new
union
select 'loan_carmodel' as `table`, (select count(1) from minibank_bak.loan_carmodel) as count, (select count(1) from loan_carmodel) as count_new
union
select 'loan_chattel' as `table`, (select count(1) from minibank_bak.loan_chattel) as count, (select count(1) from loan_chattel) as count_new
union
select 'loan_company' as `table`, (select count(1) from minibank_bak.loan_company) as count, (select count(1) from loan_company) as count_new
union
select 'loan_customer' as `table`, (select count(1) from minibank_bak.loan_customer) as count, (select count(1) from loan_customer) as count_new
union
select 'loan_customercreditscore' as `table`, (select count(1) from minibank_bak.loan_customercreditscore) as count, (select count(1) from loan_customercreditscore) as count_new
union
select 'loan_estate' as `table`, (select count(1) from minibank_bak.loan_estate) as count, (select count(1) from loan_estate) as count_new
union
select 'loan_job' as `table`, (select count(1) from minibank_bak.loan_job) as count, (select count(1) from loan_job) as count_new
union
select 'loan_loan' as `table`, (select count(1) from minibank_bak.loan_loan) as count, (select count(1) from loan_loan) as count_new
union
select 'loan_loanapproval' as `table`, (select count(1) from minibank_bak.loan_loanapproval) as count, (select count(1) from loan_loanapproval) as count_new
union
select 'loan_loancollection' as `table`, (select count(1) from minibank_bak.loan_loancollection) as count, (select count(1) from loan_loancollection) as count_new
union
select 'loan_loanguarantee' as `table`, (select count(1) from minibank_bak.loan_loanguarantee) as count, (select count(1) from loan_loanguarantee) as count_new
union
select 'loan_loanmortgage' as `table`, (select count(1) from minibank_bak.loan_loanmortgage) as count, (select count(1) from loan_loanmortgage) as count_new
union
select 'loan_loanpayment' as `table`, (select count(1) from minibank_bak.loan_loanpayment) as count, (select count(1) from loan_loanpayment) as count_new
;