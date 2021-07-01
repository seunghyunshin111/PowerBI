# Power_BI_Case_2

<br>

![image](https://user-images.githubusercontent.com/57430754/124092230-96337580-da91-11eb-820f-4732c2e2f245.png)

<br>

## Using DAX

<새 테이블 / 특정 데이터 열 기준으로 새로운 열 생성>

- PROD_CATEGORY = ADDCOLUMNS(SUMMARIZE('MAIN_TABLE', MAIN_TABLE[PROD_DEPT_NM]),

  "TECH_METHOD", SWITCH([PROD_DEPT_NM],"LO Group", "Cleaning", "특수관리팀", "Cleaning", "FA Group", "Cleaning", "LEMON Group", "Cleaning", "ST Group", "Cleaning", "Col Group", "Cleaning", "표면기술팀", "Super Coating", "기술개발팀", "Cleaning", "AMONG Coating", "AMONG Coating", "MONTRA Coating", "MONTRA Coating", "BAM Coating", "BAM Coating"), "SERVICE", IF([PROD_DEPT_NM] = "LO Group", "Cleaning"), "생산/기술", IF([PROD_DEPT_NM] = "LO Group", "생산"))

  - IF 복합 함수
  
    PROD_CATEGORY = ADDCOLUMNS(SUMMARIZE('MAIN_TABLE', MAIN_TABLE[PROD_DEPT_NM]),
    "TECH_METHOD", SWITCH([PROD_DEPT_NM],"LO Group", "Cleaning", "특수관리팀", "Cleaning", "FA Group", "Cleaning", "LEMON Group", "Cleaning", "ST Group", "Cleaning", "Col Group", "Cleaning", "표면기술팀", "Super Coating", "기술개발팀", "Cleaning", "AMONG Coating", "AMONG Coating", "MONTRA Coating", "MONTRA Coating", "BAM Coating", "BAM Coating"), "SERVICE", IF(
        [PROD_DEPT_NM] = "AMONG Coating",
        "Coating",
        IF(
            [PROD_DEPT_NM] = "MONTRA Coating" || [PROD_DEPT_NM] = "BAM Coating",
            "Coating",
            "Cleaning"
        )
    ), "생산/기술", IF(
            [PROD_DEPT_NM] = "특수관리팀" || [PROD_DEPT_NM] = "표면기술팀" || [PROD_DEPT_NM] = "기술개발팀",
            "기술",
            "생산"
        )
    )

<br>

- Current Month = CALCULATE([총매출], DATESMTD(M_DATE_1[Date]))

- 새 <날짜 열> 생성

  - OUT_DATE = EOMONTH(MIN(MAIN_TABLE[OUT_DATE]), 20)

    

