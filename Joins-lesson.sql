select *
from PatientStay

select *
from DimHospital

--example of left join 
Select h.Hospital AS HospitalFromLookup
, ps.Hospital AS Hospitalofthepatient
, h.HospitalType
, ps.PatientId
, ps.AdmittedDate
, ps.DischargeDate
from
    PatientStay ps -- the first table before the LEFT JOIN is known as the left table
    LEFT JOIN
    DimHospitalBad H -- this is our dimension lookup table & because, it's after the LEFT JOIN command it's referred to as the right table.
    ON
ps.Hospital = h.Hospital

--example of right join
Select h.Hospital AS HospitalFromLookup
, ps.Hospital AS Hospitalofthepatient
, h.HospitalType
, ps.PatientId
, ps.AdmittedDate
, ps.DischargeDate
from
    PatientStay ps
    RIGHT JOIN
    DimHospitalBad H
    ON
ps.Hospital = h.Hospital

-- list patients in the PRUH
SELECT
    h.Hospital AS HospitalFromLookup
    , ps.Hospital AS HospitalOfThePatient
    , h.HospitalType
    , ps.PatientId
    , ps.AdmittedDate
    , ps.DischargeDate
FROM
    DimHospitalBad h LEFT JOIN PatientStay ps ON ps.Hospital = h.Hospital
WHERE
    h.Hospital = 'PRUH'







--right join with tables reversed
SELECT
    h.Hospital AS HospitalFromLookup
    , ps.Hospital AS HospitalOfThePatient
    , h.HospitalType
    , ps.PatientId
    , ps.AdmittedDate
    , ps.DischargeDate
FROM
    DimHospitalBad h RIGHT JOIN PatientStay ps ON ps.Hospital = h.Hospital





--Full outer join 
SELECT
    h.Hospital AS HospitalFromLookup
    , ps.Hospital AS HospitalOfThePatient
    , h.HospitalType
    , ps.PatientId
    , ps.AdmittedDate
    , ps.DischargeDate
FROM
    DimHospitalBad h full OUTER JOIN PatientStay ps ON ps.Hospital = h.Hospital