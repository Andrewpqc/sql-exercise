#这种方式会舍弃掉在Address表中没有记录的数据，这条语句不是正确答案
select Firstname,LastName,City,State 
from Person,Address 
where Person.PersonId=Address.PersonId;

#这种方式则会以Person表为主，左连接Address表，这样的话，
即使Person表中的一个元组，在Address表中没有对应的记录，
也会被检索出来，这条语句正确。
select Firstname,LastName,City,State 
from Person
left join Address on Person.PersonId=Address.PersonId; 