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

---query 3
with cte as (select category_id,sum(amount) as total_sales from sales 
group by category_id)

select category_name,COALESCE(ct.total_sales,0) from categories cg
left join cte ct on cg.category_id = ct.category_id
order by ct.total_sales
