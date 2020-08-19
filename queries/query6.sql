SELECT surgeonID, COUNT(*) as NumSurgeons
    FROM surgeon natural join surgery
   WHERE surgerytype = 'CABG'
GROUP BY surgeonID
ORDER BY count (*) DESC
