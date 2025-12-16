--Which countries have the highest number of active cases?--
SELECT TOP (20) Country, SUM(Active) AS TotalActive
FROM Covid_19_Clean
GROUP BY Country
ORDER BY TotalActive DESC;

--Which countries  death count is growing fastest over the last 7 days?--
SELECT TOP 10
    Country,
    MAX(Deaths) - MIN(Deaths) AS Death_Growth_Last_7_Days
FROM Covid_19_Clean
WHERE Date >= DATEADD(DAY, -7, (SELECT MAX(Date) FROM Covid_19_Clean))
GROUP BY Country
ORDER BY Death_Growth_Last_7_Days DESC;

--Which WHO Region has the highest case fatality rate (Deaths / Confirmed)?--
SELECT TOP (10)
    WHO_Region,
    SUM(Deaths) * 1.0 / SUM(Confirmed) AS Fatality_Rate
FROM Covid_19_Clean
GROUP BY WHO_Region
ORDER BY Fatality_Rate DESC;

--Which country recovered the fastest in the past 30 days?--
WITH Data30 AS (
    SELECT *
    FROM Covid_19_Clean
    WHERE Date >= DATEADD(DAY, -30, (SELECT MAX(Date) FROM Covid_19_Clean))
)
SELECT 
    Country,
    SUM(Recovered) AS Total_Recovered_Last_30_Days
FROM Data30
GROUP BY Country
ORDER BY Total_Recovered_Last_30_Days DESC;


--Which date had the highest number of daily new cases globally?--

WITH Daily AS (
    SELECT 
        Country,
        Date,
        Confirmed,
        Confirmed - LAG(Confirmed) OVER (PARTITION BY Country ORDER BY Date) AS DailyNew
    FROM Covid_19_Clean
)
SELECT Top (1)
    Date,
    SUM(DailyNew) AS Global_Daily_New_Cases
FROM Daily
GROUP BY Date
ORDER BY Global_Daily_New_Cases DESC;

--What are the top 10 countries expected to peak next week?--
SELECT TOP 10 
    Country,
    SUM(Confirmed) AS TotalCasesLastWeek
FROM Covid_19_Clean
WHERE Date >= DATEADD(DAY, -7, (SELECT MAX(Date) FROM Covid_19_Clean))
GROUP BY Country
ORDER BY TotalCasesLastWeek DESC;

--Which regions would benefit most from vaccine distributions?--
 
 SELECT 
    WHO_Region,
    SUM(Active) AS Total_Active_Cases
FROM Covid_19_Clean
GROUP BY WHO_Region
ORDER BY Total_Active_Cases DESC;



