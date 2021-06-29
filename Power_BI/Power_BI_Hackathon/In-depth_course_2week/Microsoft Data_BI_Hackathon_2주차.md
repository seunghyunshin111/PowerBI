# Microsoft Data & BI Hackathon 2주차

<br>- 심화 과정

Microsoft Azure 계좌 생성 / Azure 내 SQL 서버 관리자 계정 생성 (로그인 정보 개인 보관)

## Microsoft Azure

- 계좌 등록 (회사)
- Azure pass 등록 완료
- 카드 등록 시에는 상태 비활성을 해놔야 요금 청구 X
- resource, storage, datafactory, sql database, analysis service 만들기 완료
- 비용 청구 부분 사용 시 확인 해야 함
- server / analysis service : 비용 부분

<br>

## Microsoft SQL Server Management Studio

- Azure에서 생성한 SQL 서버 관리자 로그인 정보 입력하여 로그인
- Microsoft Azure Data Factory: 통합 런타임 설치 (빠른 설치)
- -> 연결된 서비스 / Blob Storage 생성 & SQL 생성
- Data Factory -> 파이프라인 생성 / excel(in blob storage), sql data 가져와서 매핑 및 디버깅 -> sql 서버에서 확인하면 테이블 매핑된 것 확인 가능
  - 만들어진 sql 테이블에 excel 데이터 머리글 기준 매핑해서 넣은 것
  
    <br>

## Visual Studio 2019

- data analysis 분석 - > 해커톤 으로 프로젝트 생성
- 보기 > 속성 창 설정
- 테이블 형식 모델 탐색기 > 데이터 원본 > 오른쪽 버튼 > 새 데이터 원본 > sql server database > azure sql sever의 서버 이름 복사 및 붙여넣기 > 데이터베이스 > sql server 계정 정보 입력 > 오른쪽 단추 테이블 가져오기 > 테이블 정보 확인 가능
  - 테이블 업로드 & 쿼리 편집기 사용 가능
- <관계 설정> diagram: 관계를 어떻게 설정할 것인지에 관한 인사이트 역량
- 테이블 생성 DAX 함수 사용
- <함수 생성> - <Analysis Service> 활용 - <BI 만들기>
- 데이터 정제 후 > Analysis service에 솔루션 배포

<br>

## Power BI

- Azure 계정을 통해 SQL Analysis service 모델 배포한 것 가져오기

<br>

## Project.

- Lab실 진행
- Team 구성
- 노트북 지참
- 