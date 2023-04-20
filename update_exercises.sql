USE codeup_test_db;
    SELECT * FROM albums;
    SELECT 'All albums in my table' AS 'info';
    SELECT record_name FROM albums WHERE release_date<1980;
    SELECT 'All albums released before 1980 my table' AS 'info';
    SELECT record_name FROM albums WHERE artist= 'Michael Jackson';
    SELECT 'All albums by Michael Jackson in my table' AS 'info';
    UPDATE albums
    SET sales=sales*10;
    SELECT sales from albums;
    UPDATE albums
    SET release_date=1800
    WHERE release_date<1980;
    SELECT release_date from albums;
    update albums
    set artist='Peter Jackson'
    where artist='Michael Jackson';
    Select artist from albums;