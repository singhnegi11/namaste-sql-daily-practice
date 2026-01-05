---query 1 
select br.BorrowerName,
string_agg(bs.BookName,',') within group (order by bs.BookName asc) as BorrowedBooks  from Borrowers  br 
left join books bs on br.BookID = bs.BookID 
group by br.BorrowerName ;

-----query 2
with cte as (select *,datename(weekday,order_date) as day,month(order_date) as month from sales)
select category,sum(amount) from cte
where day not in ('Saturday','Sunday') and month = 2
group by category;
