CREATE TABLE users(username VARCHAR(12) NOT NULL, fullname VARCHAR(50), dateofbirth DATE , profilepicture VARCHAR(255), password VARCHAR(255), email VARCHAR(100), phone VARCHAR(15), PRIMARY KEY(username));

CREATE TABLE videos(video_id VARCHAR(100) NOT NULL, title VARCHAR(200), description TEXT,likes INT, views INT, comments INT, owner VARCHAR(12), PRIMARY KEY(video_id), FOREIGN KEY(owner) REFERENCES users(username) );

CREATE TABLE comments(comment_id INT AUTO_INCREMENT NOT NULL, content TEXT, user VARCHAR(12), video VARCHAR(100), PRIMARY KEY(comment_id), FOREIGN KEY(user) REFERENCES users(username), FOREIGN KEY(video) REFERENCES videos(video_id));

INSERT INTO users(username, fullname, dateofbirth, password) VALUES("albert","Albert Kipchirchir","1990-07-15", "kdjkajdkjdks");

-- What is a RDBMS
-- Examples of RDBMS
-- Advantages of using a RDBMS - e.g. db intergrity