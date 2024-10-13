SELECT 
    books."id" AS "bookId", 
    books."name" AS "bookName", 
    books."pages" AS "bookPages", 
    books."createdAt" AS "bookCreatedAt", 
    books."updatedAt" AS "bookUpdatedAt"
FROM books;

SELECT 
    books."id" AS "bookId", 
    books."name" AS "bookName", 
    books."pages" AS "bookPages", 
    books."createdAt" AS "bookCreatedAt", 
    books."updatedAt" AS "bookUpdatedAt"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON books_categories."categoryId" = categories."id"
WHERE categories."name" = 'Fantasia';

SELECT 
    books."id" AS "bookId", 
    books."name" AS "bookName", 
    books."pages" AS "bookPages", 
    books."createdAt" AS "bookCreatedAt", 
    books."updatedAt" AS "bookUpdatedAt", 
    categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON books_categories."categoryId" = categories."id";

SELECT 
    books."id" AS "bookId", 
    books."name" AS "bookName", 
    books."pages" AS "bookPages", 
    books."createdAt" AS "bookCreatedAt", 
    books."updatedAt" AS "bookUpdatedAt", 
    authors."name" AS "authorName", 
    authors."bio" AS "authorBio"
FROM books
LEFT JOIN authors ON books."authorId" = authors."id"
WHERE books."name" LIKE '%Harry Potter%';