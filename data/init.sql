CREATE DATABASE mediaPlayer;
GO

USE mediaPlayer;

CREATE TABLE Songs (
    songId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    songName VARCHAR(50),
    artist VARCHAR(50),
    location VARCHAR(255)
);

CREATE TABLE Playlists (
    playlistId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    playlistName VARCHAR(50)
);

CREATE TABLE PlaylistSongs (
    playlistId INT,
    songId INT,
    PRIMARY KEY (playlistId, songId)
);
GO

INSERT INTO Songs (
    songId,
    songName,
    artist,
    location,
) VALUES (
    1,
	'FunHouse',
	'P!nk',
	'./assets/songs/Funhouse.mp3',
);

INSERT INTO Playlists (
    playlistId,
    playlistName,
) VALUES (
    1,
	'Rock'
);
GO
