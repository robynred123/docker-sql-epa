CREATE DATABASE mediaPlayer;
GO

USE mediaPlayer;

CREATE TABLE dbo.Songs (
    songId INT PRIMARY KEY,
    songName VARCHAR(255),
    artist VARCHAR(255),
    location VARCHAR(255),
);

CREATE TABLE dbo.Playlists (
    playlistId INT PRIMARY KEY,
    playlistName VARCHAR(255),
);

CREATE TABLE dbo.PlaylistSongs (
    playlistId INT,
    songId INT,
    CONSTRAINT PK_PLAYLISTSONGS PRIMARY KEY NONCLUSTERED ([playlistId], [songId])
);
GO

INSERT INTO dbo.Songs (
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

INSERT INTO dbo.Playlists (
    playlistId,
    playlistName,
) VALUES (
    1,
	'Rock'
);
GO
