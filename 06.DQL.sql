USE db_company;

-- 1. 부서 테이블의 모든 데이터 조회하기
SELECT *  -- * : 모든 칼럼을 의미한다. 실무에서는 사용 금지. (성능 이슈)
  FROM tbl_department;

-- 2. 부서 테이블에서 위치만 조회하기
SELECT location
  FROM tbl_department;

-- 3. 부서 테이블에서 위치의 중복을 제거하고 조회하기
SELECT DISTINCT location  -- 중복 제거 : DISTINCT
  FROM tbl_department;

-- 4. 칼럼에 별명 지정하기 (AS 별명)
SELECT 
       dept_id   AS 부서번호
     , dept_name AS 부서명
     , location  AS "부서 위치"
  FROM
       tbl_department;

-- 5. 오너 명시(데이터베이스, 테이블)
SELECT
       tbl_department.dept_id      -- 테이블명은 생략 가능
     , tbl_department.dept_name
     , tbl_department.location
  FROM
       db_company.tbl_department;  -- USE db_company 로 인해서 데이터베이스는 생략 가능

-- 6. 테이블에 별명 지정하기 (AS 별명 or AS 생략 후 별명만 지정)
SELECT
       d.dept_id
     , d.dept_name
     , d.location
  FROM
       tbl_department d;
