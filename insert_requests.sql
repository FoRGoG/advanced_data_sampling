INSERT INTO Artist(id, nickname)
VALUES
	('1', 'Tricky'),
	('2', 'Moby'),
	('3', 'PJ Harvey'),
	('4', 'Gorillaz'),
	('5', 'Frank Sinatra'),
	('6', 'Oxxxymiron'),
	('7', 'Machine Gun Kelly'),
	('8', 'Kendrick Lamar');

INSERT INTO Genre(id, title)
VALUES
	('1', 'Rap'),
	('2', 'Rock'),
	('3', 'Jazz'),
	('4', 'Electronic'),
	('5', 'Alternative');

INSERT INTO Album(id, title, year)
VALUES
	('1', 'Maxinquaye', '1995'),
	('2', 'Play', '1999'),
	('3', 'To Bring You My Love', '1995'),
	('4', 'Demon Days', '2005'),
	('5', 'Songs For Swimming Lovers!', '1956'),
	('6', 'Красота и Уродство', '2021'),
	('7', 'Tickets To My Downfall', '2020'),
	('8', 'DAMN.', '2018');
	
INSERT INTO Track(id, name, duration, album_id)
VALUES
	('1', 'Overcome', '4:29', '1'),
	('2', 'Hell is Round The Corner', '3:46', '1'),
	('3', 'Natural Blues', '4:13', '2'),
	('4', 'Porcelain', '3:58', '2'),
	('5', 'Long Snake Moan', '5:15', '3'),
	('6', 'Down by The Water', '3:14', '3'),
	('7', 'Feel Good Inc.', '3:42', '4'),
	('8', 'Kid with Guns', '3:45', '4'),
	('9', 'Ive Got You Under My Skin', '3:43', '5'),
	('10', 'You Make Me Fell So Young', '4:29', '5'),
	('11', 'Агент', '3:34', '6'),
	('12', 'Партизанское радио', '2:45', '6'),
	('13', 'title track', '2:45', '7'),
	('14', 'my bloody valentine', '3:25', '7'),
	('15', 'HUMBLE.', '4:29', '7');
	
INSERT INTO Collection(id, name, year)
VALUES
	('1', 'Reanimation', '2002'),
	('2', 'The Studio Album Collection', '2016'),
	('3', 'The Greatest Hits', '2008'),
	('4', 'Killing Floor 2', '2015'),
	('5', 'Peaky Blinders', '2019'),
	('6', 'Сохрани мою речь навсегда', '2021'),
	('7', 'Мы вышли из кино', '2017'),
	('8', 'The Metallica Blacklist', '2021');	