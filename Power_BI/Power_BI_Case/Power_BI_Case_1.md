# Power_BI_Case_1

![Case1](https://user-images.githubusercontent.com/57430754/123596071-a696e680-d82c-11eb-985c-8c038e6cefd7.png)

<br>

## Using DAX

- 총매출 = SUM('MAIN_TABLE'[WON_PRICE])

- RankbyMaker = MAXA(MAIN_TABLE[CS_MAKER_NM])

- RankbyCustomer = MAXA(MAIN_TABLE[CUST_NM])

- 당월매출 = CALCULATE([총매출],

  FILTER('M_DATE',year('M_DATE'[Date])&MONTH('M_DATE'[Date])=YEAR(max('M_DATE'[Date]))&MONTH(max('M_DATE'[Date]))))

- 전월매출_2 = 

  var m=EDATE(MAX('M_DATE'[Date]),-1)

  return

  CALCULATE([총매출],FILTER(ALL('M_DATE'),YEAR('M_DATE'[Date])&MONTH('M_DATE'[Date])=year(m)&MONTH(m)))

- *테이블 관계 설정 필수*

- Month_Cumulateve_Sales = CALCULATE([총매출], DATESMTD(M_DATE[Date]))

<br>

## Reference DAX

- 월별누적합계 = TOTALMTD(SUM(MAIN_TABLE[WON_PRICE]),M_DATE[Month])

  

