SELECT distinct surgeonID, surgeonName
    FROM surgeon natural join surgery
    WHERE clientID = '3389828'
