INSERT INTO Genres (name_genres) 
VALUES('Ambient'), ('Trance'), ('Русский RAP'), ('Шансон'), ('House');

INSERT INTO Performers (name_performer) 
VALUES('Solar Fields'), ('AstroPilot'), ('Гуф'), ('Михаил Круг'), ('Tryger'), ('Дымовая завеса'), ('Vibrasphere');

INSERT INTO PerformerGenre (performers_id, genre_id) 
VALUES(1,1), (2,1), (3,3), (4,4), (5,5), (6,3), (7,2);

INSERT INTO Albums (name_album, year_of_release) 
VALUES('Green', '2014-01-01'), ('Solar Walk IV. YOUniverse', '2017-01-01'), ('Город дорог', '2007-01-01'), ('Мадам', '1998-01-01'), ('Этажи', '2007-01-01'), ('Lime Structure', '2003-01-01'), ('Мадам', '1998-01-01');

INSERT INTO PerformerAlbums (album_id, perf_id) 
VALUES(1,1), (2,2), (3,3), (4,4), (5,6), (6,7), (7,4);

INSERT INTO Track (track_name, duration) 
VALUES('Third Time (T-Version)', 496 ), ('Shots Of Awe', 397 ), ('Новогодняя', 220 ), ('Владимирский централ', 268  ), ('Этажи', 292), ('Manzanilla', 542), ('Мой Бог', 321);

INSERT INTO Compilations (compilation_name, realise_date) 
VALUES('First Impression', '2002-07-01' ), ('Chillout And Ambient Pieces Vol.3', '2018-05-16'), ('Rap.Ru #1 Сборник Лучшего Русского Рэпа', '2004-01-01'), ('Москва Бандитская Выпуск 4', '1999-01-01'), ('Rap.Ru #2 Сборник Лучшего Русского Рэпа', '2005-01-01'), ('Chillosophy Number-3', '2003-03-01'), ('Михаил Круг – Лучшие Песни', '2007-01-01');

INSERT INTO CompilationsTrack (track_id, comp_id) 
VALUES(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7);