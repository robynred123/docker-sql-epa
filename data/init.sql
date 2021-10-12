CREATE DATABASE mediaPlayer;
GO

USE mediaPlayer;

CREATE TABLE Songs (
    songId INT,
    songName NVARCHAR(255),
    artist NVARCHAR(255),
    location VARCHAR(255),
    CONSTRAINT PK_SONGS PRIMARY KEY (songId)
);
GO

CREATE TABLE Playlists (
    playlistId INT,
    playlistName NVARCHAR(255),
    CONSTRAINT PK_PLAYLISTS PRIMARY KEY (playlistId)
);
GO

CREATE TABLE PlaylistSongs (
    playlistId INT,
    songId INT,
    CONSTRAINT PK_PLAYLISTSONGS PRIMARY KEY NONCLUSTERED ([playlistId], [songId])
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
