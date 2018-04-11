create procedure MailingListCount (ListCount out Integer) IS v_rows INTEGER;
begin
    select count(*) Into v_rows
    from Customers
    where not cust_eamil IS NULL;
    ListCount:=v_rows;
end;