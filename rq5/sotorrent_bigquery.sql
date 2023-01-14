SELECT Event, COUNT(*)
FROM `SOTorrent.EditHistory`
WHERE PostId IN (
SELECT PostId
FROM `SOTorrent.Threads`
WHERE ParentId = <threadID>
)
AND TIMESTAMP(CreationDate) > TIMESTAMP("<commitTimestamp>")
GROUP BY Event;
