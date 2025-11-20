use HealthCare

Select Full_Name
from HealthCaree

--Patients by Country
Select  Patient_Country , count(id) '#Patients'
from HealthCaree
group by Patient_Country

--Patients by state
Select  Patient_State , count(id) '#Patients'
from HealthCaree
group by Patient_State

--Patients by City
Select  Patient_City , count(id) '#Patients'
from HealthCaree
group by Patient_City

--Patients by Gender
Select  Gender , count(id) '#Patients'
from HealthCaree
group by Gender

--Patients by MARITAL
Select  MARITAL , count(id) '#Patients'
from HealthCaree
group by MARITAL
Having MARITAL!= ''

--Patients by IF_Patient_Alive
Select  IF_Patient_Alive , count(id) '#Patients'
from HealthCaree
group by IF_Patient_Alive

-- Calculating Age Column 
Alter Table HealthCaree
Add  Age float ;

Update HealthCaree
set Age =DATEDIFF(year, BIRTHDATE, GETDATE())

-- Age Stats
Select Min(Age) Min_Age , AVG(Age)Avg_Age , MAX(Age) Max_Age
from HealthCaree 
 
 -- Patient by Encounter Class
Select ENCOUNTER_CLASS , COUNT(id) #Patient
from HealthCaree
Group by ENCOUNTER_CLASS

-- Money Stats
Select AVG(Payer_Coverage) Avg_Payer_Coverage,
Avg(Base_Cost) Avg_Base_Cost , 
Avg(BASE_ENCOUNTER_COST) Avg_Base_Cost , 
Avg(TOTAL_CLAIM_COST) Avg_TOTAL_CLAIM_COST
from HealthCaree

-- Patient by Payer City
Select count(id) #Patient , Payer_City
from HealthCaree
Group by Payer_City

-- Patient by Payer Name
Select Top 2 count(id) #Patient , Payer_Name
from HealthCaree
Group by Payer_Name
order by #Patient Desc

-- Patient by Payer Name
Select count(id) #Patient , Payer_State
from HealthCaree
Group by Payer_State

-- Total Revenue 
Select Sum(TOTAL_CLAIM_COST) #Revenue
from HealthCaree

