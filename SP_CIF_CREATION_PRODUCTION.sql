


CREATE    PROC [dbo].[MPI_GENERATE_REQUEST_FOR_CIF_CREATION](@APPLICATIONID INT,@USERID INT)                                        
AS                                        
/*==============================================================================                                        
 CREATED BY: PRATEEK PATHRE                                        
 CREATED ON: 15-01-2024                                        
 LAST MODIFIED BY : ALI ASGAR BAJI    
 LAST MODIFIED ON : 30.04.2024   
 DESCRIPTION: GENERATE MQ REQUEST PAYLOAD FOR CIF CREATION (Get the Latest SP from UAT and executing on Production on 30.04.2024)                                     
 EXEC MPI_GENERATE_REQUEST_FOR_CIF_CREATION 1 ,1     
================================================================================*/                                        
BEGIN                                        
    SET NOCOUNT ON                                  
DECLARE                                       
 @ID_TYPE1 NVARCHAR(2) = '', @ID_TYPE2 NVARCHAR(2) = '', @ID_TYPE3 NVARCHAR(2) = '', @ID_TYPE4 NVARCHAR(2) = '',     
 @ID1_TYPE1 NVARCHAR(2) = '',  @ID1_TYPE2 NVARCHAR(2) = '',  @ID1_TYPE3 NVARCHAR(2) = '', @ID1_TYPE4 NVARCHAR(2) = '',   
 @IDNUMBER1 NVARCHAR(20) = '', @IDNUMBER2 NVARCHAR(20) = '', @IDNUMBER3 NVARCHAR(20) = '',  @IDNUMBER4 NVARCHAR(20) = '',  
 @ID1NUMBER1 NVARCHAR(20) = '',@ID1NUMBER2 NVARCHAR(20) = '', @ID1NUMBER3 NVARCHAR(20) = '', @ID1NUMBER4 NVARCHAR(20) = '',   
 @ACR_NO NVARCHAR(20) = '',   
 @CONCAT_ADDRESS NVARCHAR(256),  
 @CONCAT_BUSINESS_ADDRESS NVARCHAR(256),  
 @CONCAT_ALTERNATE_ADDRESS NVARCHAR(256),  
 @CONCAT_FOREIGN_ADDRESS NVARCHAR(256),  
 @COUNTRY_CODE NVARCHAR(100) = '',   
 @BUSS_COUNTRY_CODE NVARCHAR(100) = '',   
 @SOURCECODE NVARCHAR(10)='',  
 @HOME_PHONE_NUMBER Nvarchar(20)='',  
 @ORGBRANCHCODE INT,  
 @ECONOMICSECTOR Nvarchar(5),  
 @FINANCIALAPPLICATIONID INT;  
  
  
 --------------------------------------GET THE FINANCIAL APPLICATION ID ----------------------------------------  
 SELECT @FINANCIALAPPLICATIONID=RELATEDTOID FROM APPLICATION WHERE OWNERID=985 and APPLICATIONID=@APPLICATIONID;  
                            
------------------------- RESOLVE COUNTRY --------------------------------                            
SELECT TOP 1 @COUNTRY_CODE = COUNTRYCODE FROM COUNTRIES(NOLOCK) WHERE OWNERID = 985 AND CountryCode = (SELECT Apl_ex1_97 FROM Apl_ex1 WHERE OWNERID = 985 AND Apl_ex1_ID =@APPLICATIONID )      
SELECT TOP 1 @BUSS_COUNTRY_CODE = COUNTRYCODE FROM COUNTRIES(NOLOCK) WHERE OWNERID = 985 AND NAME = (SELECT APL_EX4_8 FROM APL_EX4 WHERE OWNERID = 985 AND APL_EX4_ID =@APPLICATIONID )      
-------------------- ORIGINATING BRANCH -----------------------------------  
SELECT TOP 1 @ORGBRANCHCODE=CODE   
 FROM MPIMDMORIGINATINGBRANCH WHERE OWNERID=985 AND UPPER(VALUE)=  
 (  
  SELECT TOP 1 UPPER(FIA_EX3_80)  FROM FIA_EX3 F3  
  INNER JOIN APPLICATION A  ON  
   A.OWNERID=F3.OWNERID AND A.RELATEDTOID=F3.FIA_EX3_ID  
   WHERE A.OWNERID=985 AND A.APPLICATIONID=@APPLICATIONID   
 )  
-------------- RESOLVE MULTIPLE ID NUMBERS AND GET ID LIST ------------------------        
 SELECT              
 ROW_NUMBER() OVER(ORDER BY V.CUSTOMOBJECTID ASC) AS ROW_INDEX,             
 V1.VER_EX1_1 AS IDTYPE,            
 V.SUBJECT AS IDNUMBER,                                      
 V.RELATEDTOID AS APPLICATIONID,  
 IDLength LENGTH  
 INTO #VER_TEMP                                      
 FROM VERIFICATION V                                       
   INNER JOIN VER_EX1 V1 ON V.OWNERID = V1.OWNERID AND V1.VER_EX1_ID = V.CUSTOMOBJECTID   
   INNER JOIN MPI_MDM_IDTYPE M(NOLOCK) ON V1.OWNERID=M.OWNERID AND V1.VER_EX1_1=M.CODE  
WHERE V.OWNERID = 985 AND     
   V.LAYOUTID = 10204009 /*ID INFO*/ AND     
   V.RELATEDTOID =@APPLICATIONID AND
   V.RELATEDTOTYPEID = 162 AND
   ISNULL(M.IDLength,0)<=15;   
 SELECT              
 ROW_NUMBER() OVER(ORDER BY V.CUSTOMOBJECTID ASC) AS ROW_INDEX,             
 V1.VER_EX1_1 AS IDTYPE,         
 V.SUBJECT AS IDNUMBER,                                      
 V.RELATEDTOID AS APPLICATIONID,  
 IDLength LENGTH  
 INTO #VER_TEMP_1                                      
 FROM VERIFICATION V                                       
   INNER JOIN VER_EX1 V1 ON V.OWNERID = V1.OWNERID AND V1.VER_EX1_ID = V.CUSTOMOBJECTID   
   INNER JOIN MPI_MDM_IDTYPE M(NOLOCK) ON V1.OWNERID=M.OWNERID AND V1.VER_EX1_1=M.CODE  
WHERE V.OWNERID = 985 AND     
   V.LAYOUTID = 10204009 /*ID INFO*/ AND     
   V.RELATEDTOID =10530 AND  
   ISNULL(M.IDLength,0)>15;  
                                       
SELECT @ID_TYPE1 =IDTYPE , @IDNUMBER1 = IDNUMBER FROM #VER_TEMP WHERE ROW_INDEX = 1                                      
SELECT @ID_TYPE2 =IDTYPE , @IDNUMBER2 = IDNUMBER FROM #VER_TEMP WHERE ROW_INDEX = 2                                      
SELECT @ID_TYPE3 =IDTYPE , @IDNUMBER3 = IDNUMBER FROM #VER_TEMP WHERE ROW_INDEX = 3                                      
SELECT @ID_TYPE4 =IDTYPE , @IDNUMBER4 = IDNUMBER FROM #VER_TEMP WHERE ROW_INDEX = 4   
  
SELECT @ID1_TYPE1 =IDTYPE , @ID1NUMBER1 = IDNUMBER FROM #VER_TEMP_1 WHERE ROW_INDEX = 1                                      
SELECT @ID1_TYPE2 =IDTYPE , @ID1NUMBER2 = IDNUMBER FROM #VER_TEMP_1 WHERE ROW_INDEX = 2                                      
SELECT @ID1_TYPE3 =IDTYPE , @ID1NUMBER3 = IDNUMBER FROM #VER_TEMP_1 WHERE ROW_INDEX = 3                                      
SELECT @ID1_TYPE4 =IDTYPE , @ID1NUMBER4 = IDNUMBER FROM #VER_TEMP_1 WHERE ROW_INDEX = 4     
-----------------------------------------------------------------------------------  
SELECT                              
 @ACR_NO=V.SUBJECT   
 FROM VERIFICATION V                                       
   INNER JOIN VER_EX1 V1 ON V.OWNERID = V1.OWNERID AND V1.VER_EX1_ID = V.CUSTOMOBJECTID   
WHERE V.OWNERID = 985 AND     
   V.LAYOUTID = 10204009 /*ID INFO*/ AND     
   V.RELATEDTOID =@APPLICATIONID AND  
   V1.VER_EX1_1='AR';  
----------------------------- CONCAT ADDRESS--------------------------------------                                  
-- ADDRESS FIELDS    
SELECT                                   
 @CONCAT_ADDRESS =     
 RTRIM(LTRIM(CONCAT(APL_EX3_61 ,' ', /*Block Number*/  
  Apl_ex2_61,'  ',    /*LOT Number*/  
  APL_EX2_60 ,' ',    /*Phase Number*/  
  APL_EX3_62 ,' ',    /*Unit Number*/    
  APL_EX3_63 ,' ',  
  APL_EX3_75    /*StreetName */  
      )))                                  
FROM APL_EX2 A2           
 INNER JOIN APL_EX3 A3 ON A2.OWNERID = A3.OWNERID AND A2.APL_EX2_ID = A3.APL_EX3_ID                                  
 INNER JOIN APL_EX4 A4 ON A2.OWNERID = A4.OWNERID AND A2.APL_EX2_ID= A4.APL_EX4_ID                                  
WHERE A4.OWNERID = 985 AND A4. APL_EX4_ID = @APPLICATIONID    
  
SELECT                                   
 @CONCAT_BUSINESS_ADDRESS =     
 RTRIM(LTRIM(CONCAT(Apl_ex3_79 ,' ',   /*Block Number*/    
  Apl_ex3_82 ,' ',     /*LOT Number*/  
     Apl_ex3_80 ,' ',       /*Phase Number*/  
     Apl_ex3_81 ,' ',     /*Unit Number*/    
  Apl_ex3_83,' ',  
  Apl_ex3_84    /*StreetName */  
   )))                                  
FROM APL_EX2 A2           
 INNER JOIN APL_EX3 A3 ON A2.OWNERID = A3.OWNERID AND A2.APL_EX2_ID = A3.APL_EX3_ID                                  
 INNER JOIN APL_EX4 A4 ON A2.OWNERID = A4.OWNERID AND A2.APL_EX2_ID= A4.APL_EX4_ID                                  
WHERE A4.OWNERID = 985 AND A4. APL_EX4_ID = @APPLICATIONID    
  
-- ALTERNATE ADDRESS    
SELECT          
 @CONCAT_ALTERNATE_ADDRESS =     
 RTRIM(LTRIM(CONCAT(APL_EX5_37 ,' ',    
     APL_EX5_39)))                                  
FROM APL_EX5 A5                                   
WHERE A5.OWNERID = 985 AND A5.APL_EX5_ID = @APPLICATIONID       
  
SELECT          
 @CONCAT_FOREIGN_ADDRESS =     
 RTRIM(LTRIM(CONCAT(Apl_ex3_76 ,' ',    
     Apl_ex3_77)))                                  
FROM APL_EX3 A3                                   
WHERE A3.OWNERID = 985 AND A3.APL_EX3_ID = @APPLICATIONID     
  
SELECT @HOME_PHONE_NUMBER=CASE   
  --WHEN (Apl_ex2_63 IS NOT NULL OR Apl_ex2_63!='DONE') AND   Apl_ex5_126 IS NOT NULL THEN CONCAT('(0',ISNULL(Apl_ex5_126,''),')' , ISNULL(APL_EX1_65,''),'X',Apl_ex2_63)  
  WHEN Apl_ex5_126 IS NOT NULL THEN CONCAT('(0',ISNULL(Apl_ex5_126,''),')' , ISNULL(APL_EX1_65,''))  
  WHEN Apl_ex5_126 IS NULL THEN ISNUll(APL_EX1_65,'')  
  ELSE '' END  
FROM APL_EX1 A1  
    INNER JOIN Apl_ex2 A2 ON A1.OwnerId=A2.OwnerId AND A1.Apl_ex1_Id=A2.Apl_ex2_Id  
 INNER JOIN APL_EX5 A5 ON A1.OwnerId=A5.OwnerId AND A1.Apl_ex1_Id=A5.Apl_ex5_Id  
 WHERE A1.OWNERID=985 AND APL_EX1_ID=@APPLICATIONID  
  
---------------------------------- LENGTH COUNT RESOLUTION FOR APPLICATION NAME -------------------------------                       
            
DECLARE @APPLICATIONNAME NVARCHAR(256),             
        @FIRSTNAME NVARCHAR(256),             
  @MIDDLENAME NVARCHAR(256),             
  @LASTNAME NVARCHAR(256),            
  @SUFFIX NVARCHAR(256);            
              
SELECT             
    @APPLICATIONNAME =   TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(APPLICATIONNAME,'Mr.',''),'Jr.',''),'Sr.',''),'Ms.',''),'Mrs.','')),             
    @FIRSTNAME = FIRSTNAME,             
    @MIDDLENAME = MIDDLENAME,             
    @LASTNAME = LASTNAME            
  FROM APPLICATION                             
WHERE OWNERID = 985 AND APPLICATIONID = @APPLICATIONID;                      
                      
SELECT @SUFFIX = APL_EX3_54 FROM APL_EX3 WHERE OWNERID = 985 AND APL_EX3_ID =@APPLICATIONID                      
                         
IF (ISNULL(@SUFFIX,'') !='')                      
BEGIN                      
SET @APPLICATIONNAME = @APPLICATIONNAME + ' ' + @SUFFIX;                      
END                      
----------------------- START LENGTH NAME -----------------------                               
DECLARE @FIRSTNAME_STARTPOSITION INT = 0, @MIDDLENAME_STARTPOSITION INT = 0, @LASTNAME_STARTPOSITION INT = 0,@SUFFIX_STARTPOSITION INT = 0;                          
                            
IF (ISNULL(@FIRSTNAME,'')!= '') BEGIN SET @FIRSTNAME_STARTPOSITION = CHARINDEX(@FIRSTNAME, @APPLICATIONNAME) END;                         
IF (ISNULL(@MIDDLENAME,'')!= '') BEGIN SET @MIDDLENAME_STARTPOSITION = CHARINDEX(@MIDDLENAME, @APPLICATIONNAME) END;                         
IF (ISNULL(@LASTNAME,'')!='')BEGIN SET @LASTNAME_STARTPOSITION = CHARINDEX(@LASTNAME, @APPLICATIONNAME) END;                                 
IF (ISNULL(@SUFFIX,'')!='')BEGIN SET @SUFFIX_STARTPOSITION = CHARINDEX(@SUFFIX, @APPLICATIONNAME) END;                                 
------------------------ SALUTATION -------------------------------                               
DECLARE @SALUTATION NVARCHAR (10),@SALUTATION_startPosition INT = 0, @SALUTATION_flag INT = 0;                         
--SET @SALUTATION = SUBSTRING(@APPLICATIONNAME,1,3)                         
--IF (@SALUTATION='Mrs')                                
--BEGIN                                  
--SET @SALUTATION_flag = 1                                 
--END;                                
                                 
--IF (SUBSTRING(@APPLICATIONNAME,1,2) in ('Mr','Jr','Sr','Ms','Dr') AND @SALUTATION_flag != 1)                                
--BEGIN                                  
--SET @SALUTATION_flag = 2                                
--SET @SALUTATION = SUBSTRING(@APPLICATIONNAME,1,2)                                
--END;                              
-------------------------------- SOURCE CODE------------------------------------  
  
SELECT @SOURCECODE=FIA_EX2_90 FROM FIA_EX2 FA2  
  INNER JOIN APPLICATION A ON FA2.OWNERID=A.OWNERID AND FA2.FIA_EX2_ID=A.RELATEDTOID  
 WHERE A.OWNERID=985 AND A.APPLICATIONID=@APPLICATIONID;  
  
  
SELECT  @ECONOMICSECTOR=ECOSECTORCODE FROM APL_EX2 A2  
  INNER JOIN  APL_EX3 A3 ON A2.OWNERID=A3.OWNERID AND A2.APL_EX2_ID=A3.APL_EX3_ID  
  INNER JOIN MPI_MDM_NATUREOFBUSINESS(NOLOCK) M ON A2.OWNERID=M.OWNERID AND  M.SIBSCODE=A3.APL_EX3_99  AND M.EMPLOYMENTCODE=A2.APL_EX2_30  
 WHERE A2.OWNERID=985 AND A2.APL_EX2_ID=@APPLICATIONID  
  
  
-------------------------------- EMPLOYEED CODE / OFFICER CODE ------------------------------------  
  DECLARE @OFFICERCODE NVARCHAR(32);  
  SELECT @OFFICERCODE = TAG1  
  FROM USERCONTACT UC  
  WHERE COMPANYID = 985  
    AND TRIM(USERNAME)= (  
   SELECT FIA_EX5_85 FROM FIA_EX5 WHERE OWNERID=985 AND FIA_EX5_ID=@FINANCIALAPPLICATIONID  
 );  
    
  IF(LEN(ISNULL(@OFFICERCODE, N'')) = 0) BEGIN  
    SET @OFFICERCODE = N'';  
  END;  
         
  
--=====================================================CREATE PAYLOAD REQUEST =============================================================================================  
SELECT  UPPER (                                       
--LEFT(CONCAT((SELECT CASE WHEN ISNULL(EMPLOYEENUMBER,'')='' THEN 'BTUAFG961'ELSE EMPLOYEENUMBER END  FROM USERCONTACT WHERE COMPANYID = 985 AND USERID = A.LastModifiedBy), SPACE(10)),10) + --USERID   
LEFT(CONCAT((SELECT CASE WHEN ISNULL(EMPLOYEENUMBER,'')='' THEN 'BTUAFG961'ELSE EMPLOYEENUMBER END  FROM USERCONTACT WHERE COMPANYID = 985 AND USERID = @USERID), SPACE(10)),10) + --USERID   
/* --------------------------- HEADER REQUEST START ------------------------------*/    
--LEFT(CONCAT('BTUAFG961', SPACE(10)),10)+   --1. USERID | User ID (MAN) only for uat BTUAFG961 to be used                                       
LEFT(CONCAT(A.APPLICATIONID, SPACE(10)),10)+  --2. WRKSTN | Workstation ID (MAN) 'IPAA0107D4'                                        
LEFT(CONCAT('60', (2)),2)+       --3. TYPE | Type  (MAN)                                        
LEFT(CONCAT('61', SPACE(2)),2)+                  --4. SUBTYPE | Sub-Type (MAN)                                        
/* --------------------------- HEADER REQUEST END  ------------------------------*/    
/* --------------------------- DETAILS REQUEST START  ------------------------------*/    
LEFT(CONCAT('', SPACE(1)),1)+      --5. CFRECI | Identifier(MAN)                                        
LEFT(CONCAT('0', SPACE(1)),1)+      --6. CFRETN | Retention   (MAN)                                        
LEFT(CONCAT('00', SPACE(2)),2)+      --7. CFBNKN | Bank number (MAN)                                        
LEFT(CONCAT((CASE WHEN ISNULL(@ORGBRANCHCODE,'') = '' THEN '961' ELSE CAST(@ORGBRANCHCODE AS NVARCHAR(10)) END ), SPACE(3)),3) + -- 8. CFBRNN | Branch number (MAN)                                                          
LEFT(CONCAT('', SPACE(7)),7) +     --9. CFCIF# | Customer number (MAN)--SEEMS CIF NEED TO CONFIRM                                        
LEFT(CONCAT('', SPACE(1)),1) +     --10. CFAADR |Alternate address Code (MAN)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --11. CFALIS | Alias name flag (MAN)                                       
LEFT(CONCAT(REPLACE(A.FIRSTNAME +' '+A.LASTNAME, '.', ''), SPACE(20)),20) + -- 12.CFSNME | Short name (MAN)                                        
LEFT(CONCAT('', SPACE(3)),3) +     --13. CFSEQ# | Short name sequence (MAN)                                      
LEFT(CONCAT('', SPACE(7)),7) +     --14. CFSNPH | Phonetic search key (MAN)                                       
LEFT(CONCAT('SS', SPACE(15)),15) +    --15. CFINQC | Inquiry code (MAN)                              
LEFT(CONCAT(@OFFICERCODE, SPACE(10)),10) +  --16. CFOFFR | Officer code (MAN) -- NEED TO BE CHANGED ONLY FOR UAT                                        
LEFT(CONCAT(A1.APL_EX1_8, SPACE(40)),40) +  --17. CFEMPL | Employer name (MAN)                          
LEFT(CONCAT(A2.APL_EX2_38, SPACE(1)),1) +  --18. CFINSC | Insider code (MAN) DOSRI CLASSIFICATION                                    
LEFT(CONCAT('N', SPACE(1)),1) +     --19. CFVIPC | VIP customer ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --20. CFDEAD | Deceased customer flag ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --21. CFBADA | Insufficient address ( Mandatory:)                                        
LEFT(CONCAT('N', SPACE(1)),1) +     --22. CFHLDM | Hold mail code ( Mandatory:Yes) -- DEFAULT N                                       
LEFT(CONCAT('', SPACE(1)),1) +     --23. CFPROA | Profit analysis ( Mandatory:)                                        
LEFT(CONCAT((CASE WHEN A3.Apl_ex3_78 IS NOT NULL THEN 'Y' ELSE 'N' END), SPACE(1)),1) + --24. CFFORN | Foreign address ( Mandatory:)                                    
LEFT(CONCAT('', SPACE(1)),1) +     --25. CFSIC1 | SIC #1 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --26. CFSIC2 | SIC #2 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --27. CFSIC3 | SIC #3 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --28. CFSIC4 | SIC #4 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --29. CFSIC5 | SIC #5 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --30. CFSIC6 | SIC #6 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --31. CFSIC7 | SIC #7 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --32. CFSIC8 | SIC #8 user defined ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(REPLACE(@APPLICATIONNAME,'.', ''),1,40), SPACE(40)),40) +  --33. CFNA1 | Customer name ( Mandatory:Yes)                                              
LEFT(CONCAT(SUBSTRING(REPLACE(@APPLICATIONNAME,'.', ''),41,80), SPACE(40)),40) +  --34. CFNA1A | Customer name ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_ADDRESS,1,40),SPACE(40)),40) +--35. CFNA2 | Address line 1 ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_ADDRESS,41,80),SPACE(40)),40) + --36. CFNA3 | Address line 2 ( Mandatory:)                                        
LEFT(CONCAT(A4.APL_EX4_7, SPACE(40)),40) +  --37. CFNA4 | City state zip ( Mandatory:)                                        
LEFT(CONCAT((CASE WHEN UPPER(A2.APL_EX2_40) = 'RESIDENT' THEN 'Y' WHEN A2.APL_EX2_40 = 'Y' THEN 'Y' ELSE 'N' END), SPACE(1)),1) +    --38. RESIDENT CODE ( MANDATORY:YES)     
LEFT(CONCAT(A4.APL_EX4_5, SPACE(20)),20) + --CITY ( MANDATORY:)                                        
LEFT(CONCAT((SELECT TOP 1 DISTRICTCODE FROM DISTRICTS WHERE OWNERID = 985 AND NAME = A4.Apl_ex4_5), SPACE(3)),3) + --State ( Mandatory:Yes)                                        
LEFT(CONCAT(A5.Apl_ex5_4, SPACE(3)),3) + --County ( Mandatory:Yes) // PLACE OF BIRTH                                        
LEFT(CONCAT('', SPACE(3)),3) + --Country ( Mandatory:Yes)                                                                       
LEFT(CONCAT(@COUNTRY_CODE, SPACE(3)),3) + --Country of citizenship ( Mandatory:Yes)                                        
LEFT(CONCAT((CASE WHEN @COUNTRY_CODE = 'PH' THEN 'FIL'                                
      WHEN @COUNTRY_CODE = 'CH' THEN 'CHI'                                
      WHEN @COUNTRY_CODE = 'US' THEN 'AMR'                                
      WHEN @COUNTRY_CODE = 'JP' THEN 'JAP'                                
      WHEN @COUNTRY_CODE = 'ES' THEN 'SPA'                                
      ELSE 'OTH' END), SPACE(3)),3) +  --CFRACE : Country of heritage ( Mandatory:Yes)     
  
LEFT(CONCAT(RIGHT('00000000000'+(COALESCE((A4.Apl_ex4_7),'00000000000')),9),SPACE(9)),9) + --CFZIP Postal code ( Mandatory:Yes)                                   
LEFT(CONCAT('', SPACE(1)),1) + --Name format ( Mandatory:)                                        
LEFT(CONCAT((CASE WHEN @SALUTATION_flag NOT IN (1,2) THEN CAST('000' AS NVARCHAR(3)) ELSE CAST('001' AS NVARCHAR(3)) END), SPACE(3)),3) + --Customer title before start ( Mandatory:)      
LEFT(CONCAT(('000'), SPACE(3)),3) + --Customer title before length ( Mandatory:)   
--LEFT(CONCAT((CASE WHEN @SALUTATION_flag IN (1,2) THEN RIGHT('000' + CAST(LEN(@SALUTATION) AS VARCHAR(3)), 3) ELSE '0' END), SPACE(3)),3) + --Customer title before length ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST(@FIRSTNAME_startPosition AS VARCHAR(3)), 3), SPACE(3)),3) + --Customer first name start ( Mandatory:)                                    
LEFT(CONCAT(RIGHT('000' + CAST((CASE WHEN LEN(A.FIRSTNAME)> 0 THEN LEN(A.FIRSTNAME) ELSE 0 END) AS VARCHAR(3)), 3), SPACE(3)),3) + --Customer first name length ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST(@MIDDLENAME_startPosition AS VARCHAR(3)),3), SPACE(3)),3) + --Customer middle name start ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST((CASE WHEN LEN(A.MIDDLENAME)> 0 THEN LEN(A.MIDDLENAME) ELSE 0 END) AS VARCHAR(3)), 3), SPACE(3)),3) + --Customer middle name length ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST(@LASTNAME_startPosition AS VARCHAR(3)),3), SPACE(3)),3) + --Customer surname start ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST((CASE WHEN LEN(A.LASTNAME)> 0 THEN LEN(A.LASTNAME) ELSE 0 END) AS VARCHAR(3)), 3), SPACE(3)),3) + --Customer surname length ( Mandatory:)                                   
LEFT(CONCAT(RIGHT('000' + CAST(@SUFFIX_startPosition AS VARCHAR(3)), 3), SPACE(3)),3) + --Customer name suffix ( Mandatory:)                                        
LEFT(CONCAT(RIGHT('000' + CAST((CASE WHEN LEN(@SUFFIX)> 0 THEN LEN(@SUFFIX) ELSE 0 END) AS VARCHAR(3)),3), SPACE(3)),3) + --Customer name suffix length ( Mandatory:)             
LEFT(CONCAT('000', SPACE(3)),3) + --Customer title after start ( Mandatory:)                                        
LEFT(CONCAT('000', SPACE(3)),3) + --Customer title after length ( Mandatory:)                                        
LEFT(CONCAT(A2.APL_EX2_31, SPACE(4)),4) + --Customer name control ( Mandatory:Yes)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --Original customer date (YYYYDDD) ( Mandatory:)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Original customer date (MMDDYY) ( Mandatory:)   
LEFT(CONCAT('0000000', SPACE(7)),7) +   --Date of last maintenance ( Mandatory:)   
LEFT(CONCAT('000000', SPACE(6)),6) +  --Date of last maintenance ( Mandatory:)   
LEFT(CONCAT(ISNULL(@HOME_PHONE_NUMBER,''), SPACE(20)),20) + --CFHPHO  : Phone 1 ( Mandatory:Yes - Home Phone Number)   -- Home Phone Number  
LEFT(CONCAT('', SPACE(20)),20) + --CFBPHO  Phone 2  : OFFICE   
LEFT(CONCAT('(',(SUBSTRING(ISNULL(A.Mobile,''),1,4)),')',(SUBSTRING(ISNULL(A.Mobile,''),5,9)), SPACE(20)),20) + --Phone 3 ( Mandatory:)    -- Mobile Phone Number   
LEFT(CONCAT('0000000', SPACE(7)),7) + --Financial statement date ( Mandatory:)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Financial statement date ( Mandatory:Yes)                                        
LEFT(CONCAT(@IDNUMBER1, SPACE(15)),15) + --ID number ( Mandatory:)                                        
LEFT(CONCAT(@ID_TYPE1, SPACE(2)),2) + --ID type code ( Mandatory:)             
LEFT(CONCAT('', SPACE(1)),1) + --Tax ID suffix ( Mandatory:)                                 
LEFT(CONCAT('000'+CONVERT(VARCHAR, YEAR(DATEADD(mi,480,A3.Apl_ex3_34))), SPACE(7)),7) + --Date of birth YYYYDDD ( Mandatory:)                                        
LEFT(CONCAT(FORMAT(DATEADD(mi,480,A3.Apl_ex3_34), 'MMddyy'), SPACE(6)),6) + --Date of birth MMDDYY ( Mandatory:Yes )                                        
LEFT(CONCAT(A2.Apl_ex2_18, SPACE(1)),1) + --Gender ( Mandatory:Yes)                                        
LEFT(CONCAT((CASE WHEN A1.Apl_ex1_75 in('Individual','1') then 'A' ELSE 'B' END), SPACE(1)),1) + --Class ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(1)),1) + --Individual ( Mandatory:)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --SMSA code ( Mandatory:)                                        
LEFT(CONCAT(A3.Apl_ex3_99, SPACE(8)),8) + --Business type ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(1)),1) + --Sub-class ( Mandatory:)                                        
LEFT(CONCAT(A3.Apl_ex3_96, SPACE(3)),3) + --Customer rating ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) + --CIF group code ( Mandatory:)                                        
LEFT(CONCAT('00', SPACE(2)),2) + --CIF combined cycle ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) + --TIN status ( Mandatory:)                                        
LEFT(CONCAT('0', SPACE(1)),1) + --Fed W/H code ( Mandatory:)                                        
LEFT(CONCAT('0', SPACE(1)),1) + --State W/H code ( Mandatory:)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --Fed W/H date YYYYDDD ( Mandatory:)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Fed W/H date MMDDYY ( Mandatory:)                                         
LEFT(CONCAT(@ECONOMICSECTOR, SPACE(1)),1) + --UIC #1 user defined ( Mandatory:Yes )     -- ECONOMIC SECTOR                                    
LEFT(CONCAT(A2.APL_EX2_30, SPACE(1)),1) + --UIC #2 user defined ( Mandatory:)      --EMPLOYMENT TYPE                                  
LEFT(CONCAT('', SPACE(1)),1) + --UIC #3 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) + --UIC #4 user defined ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) + --UIC #5 user defined ( Mandatory:)                                    
LEFT(CONCAT('', SPACE(1)),1) + --UIC #6 user defined ( Mandatory:)                                        
LEFT(CONCAT(A2.APL_EX2_34, SPACE(1)),1) + --UIC #7 user defined ( Mandatory:)     -- EMPLOYMENT STATUS                                   
LEFT(CONCAT('', SPACE(1)),1) + --UIC #8 user defined ( Mandatory:)                              
LEFT(CONCAT('', SPACE(1)),1) + --Record Identifier ( Mandatory:)                                        
LEFT(CONCAT(A1.APL_EX1_67, SPACE(7)),7) + --CIF Number ( Mandatory:)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Residence Address - Date Moved In ( Mandatory:)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --Residence Address - Date Moved In ( Mandatory:)   
LEFT(CONCAT(SUBSTRING(@CONCAT_BUSINESS_ADDRESS,1,40), SPACE(40)),40) + --100. CXBAD1 | Business Address-1 ( Mandatory:Yes)                                          
LEFT(CONCAT(SUBSTRING(@CONCAT_BUSINESS_ADDRESS,41,80), SPACE(40)),40) +--101. CXBAD2 | Business Address-2 ( Mandatory:)                              
LEFT(CONCAT(RIGHT('000000000' + CAST(A4.Apl_ex4_12 AS VARCHAR(9)), 9), SPACE(9)),9) + --Business Zip Code ( Mandatory:Yes)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Business Address - Date Moved In ( Mandatory:)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --Business Address - Date Moved In ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_ALTERNATE_ADDRESS,1,40), SPACE(40)),40) + --Alternate Address - 1 ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_ALTERNATE_ADDRESS,41,80), SPACE(40)),40) + --Alternate Address - 2 ( Mandatory:)                                        
LEFT(CONCAT('000000000', SPACE(9)),9) + --Alternate Address Zip Code ( Mandatory:)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_FOREIGN_ADDRESS,1,40), SPACE(40)),40) + --Foreign Address -1 ( Mandatory:Yes)                                        
LEFT(CONCAT(SUBSTRING(@CONCAT_FOREIGN_ADDRESS,41,80), SPACE(40)),40) + --Foreign Address - 2 ( Mandatory:)                                        
LEFT(CONCAT('000000000', SPACE(9)),9) + --Foreign Zip Code     ( Mandatory:Yes)           
LEFT(CONCAT(CASE WHEN ISNULL(APL_EX5_97,'')='' THEN '' ELSE CONCAT('(',(SUBSTRING(ISNULL(APL_EX5_97,''),1,4)),')',(SUBSTRING(ISNULL(APL_EX5_97,''),5,9))) END, SPACE(20)),20) + --Phone 3 ( Mandatory:)    -- CXFAX# : Fax Number - MOBILE 2    
--LEFT(CONCAT(ISNULL(APL_EX5_97,''), SPACE(20)),20) + --   CXFAX# : Fax Number - MOBILE 2   
LEFT(CONCAT(Email, SPACE(50)),50) + --E-mail Address       ( Mandatory:)                                        
LEFT(CONCAT('00000099999', SPACE(11)),11) + --Collection Code      ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(20)),20) + --Passport Number      ( Mandatory:)                                       
LEFT(CONCAT(@ACR_NO, SPACE(20)),20) + --ACR Number           ( Mandatory:Yes)     
LEFT(CONCAT('', SPACE(20)),20) + --Tax ID               ( Mandatory:)                                        
LEFT(CONCAT('000000', SPACE(6)),6) + --Date of Death        ( Mandatory:)                                        
LEFT(CONCAT('0000000', SPACE(7)),7) + --Date of Death        ( Mandatory:)                                        
LEFT(CONCAT('R', SPACE(1)),1) +               --CXFL01 | Filler 1 ( Mandatory:Yes)   - default R as Residence for mail code                                       
LEFT(CONCAT('', SPACE(1)),1) +               --CXFL02 | Asset Size ( Mandatory:)                           
LEFT(CONCAT(A5.Apl_ex5_7, SPACE(1)),1) +            --CXFL03 | Customer Risk Rating ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +               --CXFL04 | Filler 4 ( Mandatory:)                                        
LEFT(CONCAT(CASE WHEN A2.Apl_ex2_39='N' THEN 'NON' ELSE 'YES' END, SPACE(1)),1) +  --CXFL05 | Filler 5 ( Mandatory:)                 
LEFT(CONCAT((SELECT TOP 1 DISTRICTCODE FROM DISTRICTS WHERE OWNERID = 985 AND NAME = A4.Apl_ex4_10), SPACE(5)),5) + --CXFL06 | Filler 6 ( Mandatory:)    
--LEFT(CONCAT('', SPACE(5)),5) +      --CXFL06 | Filler 6 ( Mandatory:)                                        
LEFT(CONCAT(@SOURCECODE, SPACE(5)),5) +      --CXFL07 | Filler 7 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(5)),5) +      --CXFL08 | Filler 8 ( Mandatory:)                             
LEFT(CONCAT('', SPACE(5)),5) +      --CXFL09 | Filler 9 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(5)),5) +      --Filler 10 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(30)),30) + --State Name  ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(30)),30) + --Filler 12 ( Mandatory:)                                     
LEFT(CONCAT('', SPACE(30)),30) + --Filler 13 ( Mandatory:)                                   
LEFT(CONCAT('', SPACE(30)),30) + --Filler 14 ( Mandatory:)               
  
-------------------------------------------------------- MISC VALUES -------------------------------------------------------  
LEFT(CONCAT('MS', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes)  MIC1NO – Marital Status – Default to ‘MS’                                      
LEFT(CONCAT(Apl_ex2_19, SPACE(2)),2) +  --User Code (Sub-Group Code) ( Mandatory:Yes) MIC1CD – Populate with Marital Status Code                                       
LEFT(CONCAT('ND', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes)      MIC2NO – Number of Dependents – Default to ‘ND’                                  
LEFT(CONCAT(Apl_ex2_21, SPACE(2)),2) +  --User Code (Sub-Group Code) ( Mandatory:Yes) MIC2CD – Populate with Number of Dependents Code   
LEFT(CONCAT('RG', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes)   MIC3NO – Religion – Default to ‘RG’                                     
LEFT(CONCAT('', SPACE(2)),2) +    --User Code (Sub-Group Code) ( Mandatory:Yes) MIC3CD – Populate with Religion Code  
LEFT(CONCAT('ED', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes)    MIC4NO – Educational Attainment – Default to ‘ED’                                    
LEFT(CONCAT('', SPACE(2)),2) +    --User Code (Sub-Group Code) ( Mandatory:Yes)  MIC4CD – Populate with Educational Attainment Code     
LEFT(CONCAT('TR', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes)  MIC5NO – Type of Residence – Default to ‘TR’                                      
LEFT(CONCAT('', SPACE(2)),2) +    --User Code (Sub-Group Code) ( Mandatory:Yes) MIC5CD – Populate with Type of Residence Cde          
LEFT(CONCAT('RO', SPACE(2)),2) +   --MIC Number (Group Code) ( Mandatory:Yes) MIC6NO – Residence Status/Ownership – Default to ‘RO’                                       
LEFT(CONCAT(Apl_ex2_41, SPACE(2)),2) +  --User Code (Sub-Group Code) ( Mandatory:Yes) MIC6CD – Populate with Residence Status/Ownership Code     
LEFT(CONCAT('SI', SPACE(2)),2) +   --MIC4CD | MIC Number (Group Code) ( Mandatory:Yes)  MIC7NO – Source of Income – Default to ‘SI’                                
LEFT(CONCAT(A2.Apl_ex2_33, SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes) MIC7CD – Populate with Source of Income Code                  
LEFT(CONCAT('IL', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)  MIC5NO – Monthly Income Level – Default to ‘IL’                                      
LEFT(CONCAT((CASE WHEN A1.Apl_ex1_31 < 10000 THEN '1'                  
      WHEN A1.Apl_ex1_31 >= 10001 AND A1.Apl_ex1_31 <=30000 THEN '2'                  
      WHEN A1.Apl_ex1_31 >= 30001 AND A1.Apl_ex1_31 <=70000 THEN '3'                  
      WHEN A1.Apl_ex1_31 >= 70001 AND A1.Apl_ex1_31 <=140000 THEN '4'                  
      WHEN A1.Apl_ex1_31 >= 140001 AND A1.Apl_ex1_31 <=250000 THEN '5'                  
      WHEN A1.Apl_ex1_31 >= 250001 AND A1.Apl_ex1_31 <= 500000 THEN '6'                  
      WHEN A1.Apl_ex1_31 > 500000 THEN '7'                  
      else '9' END), SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes) MIC5CD – Populate with Monthly Income Level Code      
                                                                                                                                   
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                  
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --MIC Number (Group Code) ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(2)),2) + --User Code (Sub-Group Code) ( Mandatory:Yes)     
----------------------------------------------------- MISC -------------------------------------------------------------  
LEFT(CONCAT(@ID_TYPE1, SPACE(2)),2) + --ID Code 1 ( Mandatory:Yes)                                        
LEFT(CONCAT(@IDNUMBER1, SPACE(15)),15) + --ID Value 1 ( Mandatory:Yes)                                    
LEFT(CONCAT(@ID_TYPE2, SPACE(2)),2) + --ID Code 2 ( Mandatory:Yes)                                        
LEFT(CONCAT(@IDNUMBER2, SPACE(15)),15) + --ID Value 2 ( Mandatory:Yes)                                        
LEFT(CONCAT(@ID_TYPE3, SPACE(2)),2) + --ID Code 3 ( Mandatory:Yes)                                        
LEFT(CONCAT(@IDNUMBER3, SPACE(15)),15) + --ID Value 3 ( Mandatory:Yes)                                        
LEFT(CONCAT(@ID_TYPE4, SPACE(2)),2) + --ID Code 4 ( Mandatory:Yes)                                        
LEFT(CONCAT(@IDNUMBER4, SPACE(15)),15) + --ID Value 4 ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(3)),3) +  --Seqn. No. - Contact Person 1 ( Mandatory:Yes)                                        
LEFT(CONCAT('', SPACE(40)),40) + --Contact Name 1 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(20)),20) + --Telephone No. 1 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(50)),50) + --Contact Text 1 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(3)),3) +  --Seqn. No. - Contact Person 2 ( Mandatory:)                                
LEFT(CONCAT('', SPACE(40)),40) + --Contact Name 2 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(20)),20) + --Telephone No. 2 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(50)),50) + --Contact Text 2 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(3)),3) +  --Seqn. No. - Contact Person 3 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) + --Contact Name 3 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(20)),20) + --Telephone No. 3 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(50)),50) + --Contact Text 3 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(3)),3) +  --Seqn. No. - Contact Person 4 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) + --Contact Name 4 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(20)),20) + --Telephone No. 4 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(50)),50) + --Contact Text 4 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(3)),3) +  --High Risk Business ( Mandatory:)                                        
                                        
LEFT(CONCAT(@BUSS_COUNTRY_CODE, SPACE(3)),3) + --Business Ad Country ( Mandatory:)   
  
  
LEFT(CONCAT(CASE WHEN A2.Apl_ex2_39='N' THEN 'NON' ELSE 'YES' END, SPACE(3)),3) + --PEP Classification ( Mandatory:)                             
LEFT(CONCAT(CASE WHEN A2.Apl_ex2_39='N' THEN 'NON' ELSE 'YES' END, SPACE(3)),3) + --PEP Position ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(1)),1) +     --Consistency vs Tran ( Mandatory:)             
LEFT(CONCAT((SELECT TOP 1 STATECODE FROM STATES WHERE OWNERID = 985 AND NAME = Apl_ex4_4), SPACE(3)),3) + --Residence Province ( Mandatory:)    
LEFT(CONCAT(RIGHT('000000000' + (SELECT TOP 1 Cast(BarangayCode as Nvarchar(10)) FROM MPI_MDM_Barangay WHERE OWNERID = 985 AND Province=Apl_ex4_4 AND Barangay = Apl_ex4_6),9), SPACE(10)),10) + --Residence Barangay ( Mandatory:)   
--LEFT(CONCAT(RIGHT('000000000' + (SELECT TOP 1 CITYCODE FROM GEOGRAPHY WHERE OWNERID = 985 AND CITY = Apl_ex4_6),9), SPACE(10)),10) + --Residence Barangay ( Mandatory:)                                   
LEFT(CONCAT((SELECT TOP 1 STATECODE FROM STATES WHERE OWNERID = 985 AND NAME = Apl_ex4_9), SPACE(3)),3) + --Business Province  ( Mandatory:)   
LEFT(CONCAT(RIGHT('000000000' + (SELECT TOP 1 Cast(BarangayCode as Nvarchar(10)) FROM MPI_MDM_Barangay WHERE OWNERID = 985 AND Province=Apl_ex4_9 AND Barangay = Apl_ex4_11),9), SPACE(10)),10) + --Business Barangay ( Mandatory:)     
--LEFT(CONCAT(RIGHT('000000000' + (SELECT TOP 1 CITYCODE FROM GEOGRAPHY WHERE OWNERID = 985 AND CITY = Apl_ex4_11),9), SPACE(10)),10) + --Business Barangay ( Mandatory:)                                   
LEFT(CONCAT('', SPACE(3)),3) +     --Alternate Province ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(10)),10) +    --Alternate Barangay ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(80)),80) +    --Father's Name ( Mandatory:)                                        
LEFT(CONCAT(Apl_ex3_14, SPACE(80)),80) +  --Mother's Maiden Name ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(80)),80) +    --Spouse ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) +    --Filler 1 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) +    --Filler 2 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) +    --Filler 3 ( Mandatory:)                    
LEFT(CONCAT('', SPACE(40)),40) +    --Filler 4 ( Mandatory:)                                        
LEFT(CONCAT('', SPACE(40)),40) +    --Filler 5 ( Mandatory:)                    
LEFT(CONCAT(@ID1_TYPE2, SPACE(2)),2) +   --ID type code ( Mandatory:)                                        
LEFT(CONCAT(@ID1NUMBER2, SPACE(20)),20)+   --ID number ( Mandatory:)                                        
LEFT(CONCAT(@ID1_TYPE3, SPACE(2)),2) +   --ID type code ( Mandatory:)                                        
LEFT(CONCAT(@ID1NUMBER3, SPACE(20)),20) +  --ID number ( Mandatory:)                                        
LEFT(CONCAT(@ID1_TYPE4, SPACE(2)),2) +   --ID type code ( Mandatory:)                                        
LEFT(CONCAT(@ID1NUMBER4, SPACE(20)),20) +  --ID number ( Mandatory:)                                        
LEFT(CONCAT(@ID1_TYPE4, SPACE(2)),2) +   --ID type code ( Mandatory:)                                        
LEFT(CONCAT(@ID1NUMBER4, SPACE(20)),20))   --ID number ( Mandatory:)                                        
AS REQUEST ,a.applicationid  into #TEMP                                      
FROM APPLICATION A                                         
INNER JOIN APL_EX1 A1 ON A.OWNERID =A1.OWNERID AND A.APPLICATIONID = A1.APL_EX1_ID                                         
INNER JOIN APL_EX2 A2 ON A.OWNERID =A2.OWNERID AND A.APPLICATIONID = A2.APL_EX2_ID                                         
INNER JOIN APL_EX3 A3 ON A.OWNERID =A3.OWNERID AND A.APPLICATIONID = A3.APL_EX3_ID                                         
INNER JOIN APL_EX4 A4 ON A.OWNERID =A4.OWNERID AND A.APPLICATIONID = A4.APL_EX4_ID                                         
INNER JOIN APL_EX5 A5 ON A.OWNERID =A5.OWNERID AND A.APPLICATIONID = A5.APL_EX5_ID                   
LEFT OUTER JOIN MPIMDMORIGINATINGBRANCH M1 ON A3.OWNERID = M1.OWNERID AND A3.APL_EX3_94 = M1.VALUE                                        
LEFT OUTER JOIN MPI_MDM_CITY M2 ON A2.OWNERID = M2.OWNERID AND A2.APL_EX2_24 = M2.CITY                                        
LEFT OUTER JOIN MPI_MDM_COUNTRY M3 ON A2.OWNERID = M3.OWNERID AND A2.APL_EX2_23 = M3.VALUE                                        
LEFT OUTER JOIN  MPI_MDM_CUSTCLASSIFY1 M4 ON A2.OWNERID = M4.OWNERID AND A2.APL_EX2_50 = M4.VALUE -- CLASSIFICATION                                        
LEFT OUTER JOIN  MPI_MDM_PEPCLASSIFICATIO M5 ON A2.OWNERID = M5.OWNERID AND A2.APL_EX2_39 = M5.VALUE -- PEP CLASSIFICATION                                        
LEFT OUTER JOIN CUSTOMFIELDLOOKUP C1 ON A3.OWNERID = C1.OWNERID AND A3.APL_EX3_96 = C1.VALUEID AND C1.FIELDID = 6128 -- RISK RATING                                        
WHERE A.OWNERID = 985 AND A.APPLICATIONID = @APPLICATIONID                                      
                                                  
SELECT REQUEST AS RESULT FROM #TEMP   
  
 INSERT INTO MPI_MQ_REQUEST_LOG  
 SELECT GETDATE(),'CIF',403,@APPLICATIONID,REQUEST,'',@USERID FROM #TEMP;    
   
SET NOCOUNT OFF  
END  
GO


