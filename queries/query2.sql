SELECT surgeonID, surgeonName
FROM surgeon
WHERE 
dept = 'Cardiothoracic Surgery' 
AND surgeonID NOT IN 
   (SELECT surgeonID
    FROM surgery 
    WHERE EXTRACT(YEAR FROM surgery.surgerytime) = '2018' 
    and EXTRACT(MONTH FROM surgery.surgerytime) = '06' 
    
    and EXTRACT(DAY FROM surgery.surgerytime) = '25');
