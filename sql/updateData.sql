UPDATE books set "name" = 'Harry Potter e o Prisioneiro de Azkaban' WHERE "name" = 'Harry Potter';

UPDATE books
SET "name" = 'One Piece - Volume 59'
WHERE "name" = 'One Piece - Volume 1' 
AND "authorId" = (SELECT "id" FROM authors WHERE "name" = 'Eiichiro Oda');

UPDATE books
SET "name" = 'One Piece - Volume 109'
WHERE "name" = 'One Piece - Volume 2' 
AND "authorId" = (SELECT "id" FROM authors WHERE "name" = 'Eiichiro Oda');