CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    language VARCHAR(50) NOT NULL,
    format VARCHAR(50) NOT NULL
);

CREATE TABLE Show (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    theatre_id INT NOT NULL,
    show_date DATE NOT NULL,
    show_time TIME NOT NULL,
    screen_type VARCHAR(100),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id) ON DELETE CASCADE
);


**Sample Data:**

INSERT INTO Theatre (name, location) VALUES ('PVR: Nexus', 'Forum Mall');

INSERT INTO Movie (title, language, format) VALUES ('Dasara', 'Telugu', '2D');
INSERT INTO Movie (title, language, format) VALUES ('Kisi Ka Bhai Kisi Ki Jaan', 'Hindi', '2D');
INSERT INTO Movie (title, language, format) VALUES ('Tu Jhoothi Main Makkaar', 'Hindi', '2D');
INSERT INTO Movie (title, language, format) VALUES ('Avatar: The Way of Water', 'English', '3D');

INSERT INTO Show (movie_id, theatre_id, show_date, show_time, screen_type)
VALUES (1, 1, '2024-04-25', '12:10:00', '4K Dolby 7.1');
INSERT INTO Show (movie_id, theatre_id, show_date, show_time, screen_type)
VALUES (2, 1, '2024-04-25', '01:00:00', '4K ATMOS 2D');
INSERT INTO Show (movie_id, theatre_id, show_date, show_time, screen_type)
VALUES (2, 1, '2024-04-25', '04:10:00', '4K ATMOS 2D');
INSERT INTO Show (movie_id, theatre_id, show_date, show_time, screen_type)
VALUES (3, 1, '2024-04-25', '01:15:00', '4K 7.1');
INSERT INTO Show (movie_id, theatre_id, show_date, show_time, screen_type)
VALUES (4, 1, '2024-04-25', '07:20:00', 'Playhouse 4K');

**Query to List Shows on a Given Date at a Given Theatre:**

SELECT m.title, s.show_time, s.screen_type
FROM Show s
JOIN Movie m ON s.movie_id = m.movie_id
WHERE s.theatre_id = (SELECT theatre_id FROM Theatre WHERE name = 'PVR: Nexus')
AND s.show_date = '2024-04-25'
ORDER BY s.show_time;

