# Power_BI_Case_1

![Case1](https://user-images.githubusercontent.com/57430754/123919822-4c2e8f00-d9c0-11eb-81d5-8c029253b42b.png)

<br>

## Using Tool

- Slicer / ChickletSlicer1.6.3

<br>

## Using DAX

- 총매출 = SUM('MAIN_TABLE'[WON_PRICE])

- RankbyMaker = MAXA(MAIN_TABLE[CS_MAKER_NM])

- RankbyCustomer = MAXA(MAIN_TABLE[CUST_NM])

- 당월매출 = CALCULATE([총매출],

  FILTER('M_DATE',year('M_DATE'[Date])&MONTH('M_DATE'[Date])=YEAR(max('M_DATE'[Date]))&MONTH(max('M_DATE'[Date]))))

- 전월매출_2 = 

  var m=EDATE(MAX('M_DATE_1'[Date]),-1)

  return

  CALCULATE([총매출],FILTER(all('M_DATE_1'),YEAR('M_DATE_1'[Date])&MONTH('M_DATE_1'[Date])=year(m)&MONTH(m)))

  - 전월매출 사용 시, all로 데이터 테이블 함수 사용해야, 당월 제외한 전월 수치만 페이지에 나오게 된다.

- *테이블 관계 설정 필수*

- Month_Cumulateve_Sales = CALCULATE([총매출], DATESMTD(M_DATE[Date]))

- Month_Cumulateve_Sales_2 = TOTALMTD([총매출], 'M_DATE_1'[Date])

<br>

## Reference DAX

- 월별누적합계 = TOTALMTD(SUM(MAIN_TABLE[WON_PRICE]),M_DATE[Month])

  
  
  

