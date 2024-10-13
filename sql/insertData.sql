INSERT INTO authors ("name", "bio") 
VALUES ('Eiichiro Oda', 'Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.'),
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'),
('Osvaldo Silva', 'Autor e compositor brasileiro.') 
RETURNING *;


INSERT INTO books ("name", "pages", "createdAt", "updatedAt", "authorId")
VALUES ('Harry Potter', 325, '12/10/2024', '12/10/2024', 2),
('Jogos Vorazes', 276, '12/10/2024', '12/10/2024', 3),
('One Piece - Volume 1', 120, '12/10/2024', '12/10/2024', 1),
('One Piece - Volume 2', 137, '12/10/2024', '12/10/2024', 1)
RETURNING *;

INSERT INTO  categories ("id", "name", "createdAt", "updatedAt") 
VALUES ( 1, 'Aventura', '12/10/2024', '12/10/2024'),
(2, 'Fantasia', '12/10/2024', '12/10/2024'),
(3, 'Mangá', '12/10/2024', '12/10/2024')
RETURNING *;


INSERT INTO books_categories ("bookId", "categoryId")
VALUES 
    (1, 1), 
    (2, 1), 
    (3, 1), 
    (4, 1), 
    (1, 2), 
    (3, 2), 
    (4, 2), 
    (3, 3), 
    (4, 3) 
RETURNING *;

INSERT INTO contact_infos ("phone", "email", "authorId")
VALUES ('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;