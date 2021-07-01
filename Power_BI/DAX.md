# DAX in Power BI

<br>

### Lily's study log

<br>

> DAX(Data Analysis Expressions) 언어는 Excel의 파워 피벗, Power BI, Azure Analysis Services, 그리고 SQL Server Analysis Services의 테이블 형식 모델링을 위한 수식 언어입니다. DAX를 사용하여 데이터 모델 계산을 추가하고 RLS(행 수준 보안) 규칙을 정의할 수도 있습니다.

<br>

- ```dax
  Total Sales = SUM([Sales Amount])
  ```

- ```dax
  EVALUATE
   ( FILTER ( 'DimProduct', [SafetyStockLevel] < 200 ) )
  ORDER BY [EnglishProductName] ASC
  ```

- [함수 종류 in MS](https://docs.microsoft.com/ko-kr/dax/dax-overview)

- [주말에 혜화 카페에서 볼 Youtube 목록](https://www.youtube.com/results?search_query=power+bi+dax)

- Power BI + Visual Studio 를 자유롭게 활용해야 한다. 추후 분석까지. Tools은 MS 기반이나, SQL, Python, 머신러닝 분석 능력은 필요할 듯
- [DAX 필수 동영상 in MS](https://docs.microsoft.com/ko-kr/dax/dax-learn-videos)

- [Power Bi Learn course in MS](https://docs.microsoft.com/en-us/learn/paths/dax-power-bi/)

- [새로운 DAX 함수](https://docs.microsoft.com/ko-kr/dax/new-dax-functions)

- DAX 함수를 사용하여 직접 데이터를 만들어 보기 -> 가장 빨리 배우는 방법!

- PDF 파일 참조 (DAX_Microsoft_Docs.pdf)

  <br>

  > Reference 가 많아서 좋다.

- [Power BI 설명서](https://docs.microsoft.com/ko-kr/power-bi/) : 틈틈이 보면 좋을 듯. 수업 교재 개념
- Power BI - Github 연결 계정 (데이터 공유 없이도 되는지 확인)

<br>

<br>

## Making Dax

```dax
# 활용1

column1 =
IF(   AND(
       'Butikk'[Itemclass]' = 2,
       'Butikk'[sales code] = 7 || 'Butikk'[sales code] = 8 || 'Butikk'[sales code] = 9      ),
   "True", "False"  )
```

```dax
# 활용2

Price Group =
IF(
    'Product'[List Price] < 500,
    "Low",
    IF(
        'Product'[List Price] < 1500,
        "Medium",
        "High"
    )
)
```

```dax
# 최종 Output

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
```

<br>

```dax
< 특정 테이블>에서 <열 추가>

- OUT_DATE = MIN(MAIN_TABLE[OUT_DATE]) : 가장 빠른 날짜를 시작 날짜 추출
```



