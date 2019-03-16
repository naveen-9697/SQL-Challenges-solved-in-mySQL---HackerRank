SELECT CONCAT(NAME, CASE
             WHEN OCCUPATION = 'Doctor' THEN '(D)'
             WHEN OCCUPATION = 'Professor' THEN '(P)'
             WHEN OCCUPATION = 'Actor' THEN '(A)'
             WHEN OCCUPATION = 'Singer' THEN '(S)' END)
             FROM OCCUPATIONS ORDER BY NAME ASC;
SELECT 'There are a total of', COUNT(OCCUPATION), CONCAT(LOWER(OCCUPATION),'s.')
              FROM OCCUPATIONS GROUP BY OCCUPATION 
              ORDER BY 
                      COUNT(OCCUPATION) ASC,
                      OCCUPATION ASC;