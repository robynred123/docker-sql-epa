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

INSERT INTO mediaPlayer.dbo.Songs (
    songName,
    artist,
    location
) VALUES (
	'FunHouse',
	'Pink',
	'./assets/songs/Funhouse.mp3'
);
GO

INSERT INTO mediaPlayer.dbo.Playlists (
    playlistName
) VALUES (
	'Rock'
);
GO

INSERT INTO mediaPlayer.dbo.PlaylistSongs (
    playlistId, 
    songId
) VALUES (
    1,
    1
);
GO
