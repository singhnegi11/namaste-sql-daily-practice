select br.BorrowerName,
string_agg(bs.BookName,',') within group (order by bs.BookName asc) as BorrowedBooks  from Borrowers  br 
left join books bs on br.BookID = bs.BookID 
group by br.BorrowerName ;
