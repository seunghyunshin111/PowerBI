/****** SSMS의 SelectTopNRows 명령 스크립트 ******/
SELECT TOP (1000) [ORDER_NO]
      ,[CUSTOMER]
      ,[EMPLOYEE_NO]
      ,[ORDERDATE]
  FROM [dbo].[ORDERT]