---query 04
select Email,SUBSTRING(Email,charindex('@',Email)+1,len(Email)) as domain_com from customers;
