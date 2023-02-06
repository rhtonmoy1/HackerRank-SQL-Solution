-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers,
--  total number of senior managers, total number 
-- of managers, and total number of employees. Order your output by ascending company_code.

-- Note:

-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. For example, 
-- if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.


SELECT COMPANY_CODE, FOUNDER,
(SELECT COUNT(DISTINCT LEAD_MANAGER_CODE) FROM LEAD_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE) FROM SENIOR_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT MANAGER_CODE) FROM MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT EMPLOYEE_CODE) FROM EMPLOYEE WHERE COMPANY_CODE = C.COMPANY_CODE)
FROM COMPANY C
ORDER BY COMPANY_CODE;