SELECT
    COUNT(plt.trackid),
    pl.name
FROM 
    playlist pl,
    playlisttrack plt
ON
    pl.playlistid = plt.playlistid
GROUP BY pl.playlistid;