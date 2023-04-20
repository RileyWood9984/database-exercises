USE codeup_test_db;
delete from albums where release_date>1991;
select 'released after 1991' as'info';
delete from albums where genre='disco';
select 'genre disco' as 'info';
delete from albums where artist='Whitney Houston';
select 'artist Whitney houston' as info;