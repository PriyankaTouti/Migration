Delete FROM dbo.DATASOURCEXSLT WHERE OwnerID = 985 AND sourceid IN (368, 369)
Delete FROM dbo.MashupQueryParameter WHERE OwnerID = 985 AND DataSourceId IN (368, 369)
Delete FROM dbo.MashupParamMapping WHERE OwnerID = 985 AND DataSourceId IN (368, 369)
Delete FROM dbo.MashupDataSourceField WHERE OwnerID = 985 AND (ParentGroupID IN (SELECT GroupID FROM dbo.MashupDataSourceField where OwnerID = 985 AND GroupID > 0 and Type = 'Collection' and DataSourceId IN (368, 369)) OR FieldId IN (SELECT GroupID FROM dbo.MashupDataSourceField where OwnerID = 985 AND GroupID > 0 and Type = 'Collection' and DataSourceId IN (368, 369)))
Delete FROM dbo.MashupDataSourceField WHERE OwnerID = 985 AND DataSourceId IN (368, 369)
Delete FROM dbo.MashupDataSource WHERE OwnerID = 985 AND DATASOURCEID IN (368, 369)

INSERT INTO [dbo].[MashupDataSource] (OwnerId,DataSourceId,ConnectionId,Name,SourceType,Source,ReturnType,ReturnMode,DataXPath,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,ErrorCodePath,ErrorStringPath,PrimaryField,IsUTCDatetime,ErrorCodeFieldId,ErrorMsgFieldId,TransactionField,SuccessCode,IndexParameter,BatchSize,TotalCountXPath,BatchParameter,UserIdParameter,CurrentTimeField,InputDateTimeFormat,EnableLogging,RetentionPeriod,InitialSymbols,RenameSymbols,XSLT,Description,XSLTReferenceField,RestInvokeMethod,UseEncryption,EncryptionKey,RestInputMode,ImageHeight,ImageWidth,ImageFormat,XSLTTag,CheckForError,CurrentRecordCountPath,ReplyQueue,WaitInterval,InputXSLT,RemoteQueueManagerName,StringMode,LoginIDField,BranchCodeParameter,BranchIDParameter,BranchNameParameter,IPAddressField,EmployeeCodeField,Password,IsSecurityEnabled,ServiceTypeID,IgnoreHtmlEncode,FaultCodeXPath,FaultMessageXpath,FaultXslt,ENCODING,SkipNodeException,PrevPageTokenXPath,NextPageTokenXPath,AdditionalSettings,OutputLogXSLT,UsedBy,KafkaSourceType,ExceptionMessage,AdapterId,UniqueEdsName,IsAuditEnable,IsMetricsEnable) VALUES(985,368,1,N'MPI_Amount Financed_PERCENTAGE',4,N'MPI_CALCULATE_AMOUNT_FINANCED_PERCENTAGE',1,1,N'',N'Mr. nilabh kumar','2024-09-17 06:37:07',N'Mr. Aryan Shekhar','2024-09-17 10:32:53',N'',N'',N'-1',0,-1,-1,N'None',N'',Null,0,N'',Null,N'None',N'None',Null,0,0,Null,Null,N'',N'',N'None',1,0,Null,0,0,0,Null,N'',0,N'',Null,0,Null,Null,0,N'None',N'None',N'None',N'None',N'None',N'None',N'',Null,Null,0,Null,Null,Null,Null,Null,Null,Null,N'{"loginputafterxslt":false}',Null,0,0,N'',Null,Null,0,0)
INSERT INTO [dbo].[MashupDataSource] (OwnerId,DataSourceId,ConnectionId,Name,SourceType,Source,ReturnType,ReturnMode,DataXPath,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,ErrorCodePath,ErrorStringPath,PrimaryField,IsUTCDatetime,ErrorCodeFieldId,ErrorMsgFieldId,TransactionField,SuccessCode,IndexParameter,BatchSize,TotalCountXPath,BatchParameter,UserIdParameter,CurrentTimeField,InputDateTimeFormat,EnableLogging,RetentionPeriod,InitialSymbols,RenameSymbols,XSLT,Description,XSLTReferenceField,RestInvokeMethod,UseEncryption,EncryptionKey,RestInputMode,ImageHeight,ImageWidth,ImageFormat,XSLTTag,CheckForError,CurrentRecordCountPath,ReplyQueue,WaitInterval,InputXSLT,RemoteQueueManagerName,StringMode,LoginIDField,BranchCodeParameter,BranchIDParameter,BranchNameParameter,IPAddressField,EmployeeCodeField,Password,IsSecurityEnabled,ServiceTypeID,IgnoreHtmlEncode,FaultCodeXPath,FaultMessageXpath,FaultXslt,ENCODING,SkipNodeException,PrevPageTokenXPath,NextPageTokenXPath,AdditionalSettings,OutputLogXSLT,UsedBy,KafkaSourceType,ExceptionMessage,AdapterId,UniqueEdsName,IsAuditEnable,IsMetricsEnable) VALUES(985,369,1,N'MPI_UPDATE_AMENDMENT_DETAILS',4,N'MPI_UPDATE_AMENDMENT_DETAILS',1,1,N'',N'Mr. Aryan Shekhar','2024-09-17 09:47:08',N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',N'',N'-1',0,-1,-1,N'None',N'',Null,0,N'',Null,N'None',N'None',Null,1,7,Null,Null,N'',N'UPDATE AMENDMENT DEATILS',N'None',1,0,Null,0,0,0,Null,N'',0,N'',Null,0,Null,Null,0,N'None',N'None',N'None',N'None',N'None',N'None',N'',Null,Null,0,Null,Null,Null,Null,Null,Null,Null,N'{"loginputafterxslt":false}',Null,0,0,N'',Null,Null,0,0)

GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MPI_CALCULATE_AMOUNT_FINANCED_PERCENTAGE]') AND type IN (N'P', N'PC'))
DROP PROCEDURE [dbo].[MPI_CALCULATE_AMOUNT_FINANCED_PERCENTAGE]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE [dbo].[MPI_CALCULATE_AMOUNT_FINANCED_PERCENTAGE]  
    @FA_ID INT,  
    @DOWNPAYMENT_PERCENTAGE DECIMAL(13,2)  

AS  
/*  
    CREATED BY: NILABH KUMAR || Modified BY:Aryan Shekhar               
    CREATED ON: 17-09-2024                       
    DETAILS: CALCULATE AMOUNT FINANCED PERCENTAGE ON FA         
    EXEC MPI_CALCULATE_AMOUNT_FINANCED_PERCENTAGE 00103770, 6.03, @AMOUNT_FINANCED_PERCENTAGE OUTPUT  
*/ 
BEGIN  
    -- Calculate the Amount Financed Percentage  

    
    -- Select the result to show inside the procedure
    SELECT 100 - @DOWNPAYMENT_PERCENTAGE AS AmountFinancedPercentage;
END;


GO



GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MPI_UPDATE_AMENDMENT_DETAILS]') AND type IN (N'P', N'PC'))
DROP PROCEDURE [dbo].[MPI_UPDATE_AMENDMENT_DETAILS]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE MPI_UPDATE_AMENDMENT_DETAILS  
    @FA_ID INT,  
    @Car_Brand NVARCHAR(255),  
    @Car_Model NVARCHAR(255),  
    @Car_Variant_Transmission NVARCHAR(255),  
    @Car_Engine_Type NVARCHAR(255),  
    @Car_Type NVARCHAR(255),  
    @Year_Model INT,  
    @Net_Cash_Price DECIMAL(18, 2),  
    @Term_in_Months INT,  
    @Downpayment_Percentage DECIMAL(5, 2),  
    @Downpayment DECIMAL(18, 2),  
    @Amount_Financed_Percentage DECIMAL(5, 2),  
    @Amount_Financed DECIMAL(18, 2),  
    @Add_On_Rate_Percentage DECIMAL(5, 2),  
    @Net_Monthly_Installment DECIMAL(18, 2),  
    @Actual_Cash DECIMAL(18, 2),  
    @Total_DI_Percentage DECIMAL(5, 2),  
    @Total_Dealer_Incentive DECIMAL(18, 2),  
    @Total_SMC_Percentage DECIMAL(5, 2),  
    @Total_Salesman_Commission DECIMAL(18, 2),  
    @Total_INS_CMF_Percentage DECIMAL(5, 2),  
    @Total_Insurance_Chattel_Fee_PHP DECIMAL(18, 2),  
    @Total_Tuck_Ins_Percentage DECIMAL(5, 2),  
    @NET_Proceeds DECIMAL(18, 2),  
    @Dealer_Subsidy_Percentage DECIMAL(5, 2),  
    @Total_Dealer_Subsidy DECIMAL(18, 2),  
    @INAP_Months INT,  
    @In_Advance_Payment_Amount DECIMAL(18, 2),  
    @Promissory_Note_Amount DECIMAL(18, 2),  
    @Other_Deferred_Credit_Interest DECIMAL(18, 2),  
    @Total_Interest DECIMAL(18, 2),  
    @Prompt_Payment_Discount DECIMAL(18, 2),  
    @Gross_Monthly_Installment DECIMAL(18, 2),  
    @Simple_Interest_Rate DECIMAL(5, 2),  
    @Margin_Of_Finance DECIMAL(5, 2),  
    @EY DECIMAL(5, 2),  
    @IRR DECIMAL(5, 2),  
    @Doc_Stamps_Tax DECIMAL(18, 2),  
    @MOF_NET_DI DECIMAL(18, 2),  
    @Application_Type NVARCHAR(255),  
    @CA_PO NVARCHAR(255),  
    @Account_Source NVARCHAR(255),  
    @Tran_Type NVARCHAR(255),  
    @Dealer_Email NVARCHAR(255),  
    @Vehicle_Condition NVARCHAR(255),  
    @Vehicle_Usage NVARCHAR(255),  
    @Loan_Type NVARCHAR(255),  
    @Promo_Code NVARCHAR(255),  
    @Promo_Name NVARCHAR(255),  
    @Insurance_Type NVARCHAR(255),  
    @Insurance_Type_Amount DECIMAL(18, 2),  
    @Chattel_Fee_Type NVARCHAR(255),  
    @Chattel_Fee_Amount DECIMAL(18, 2),  
    @Dealer_Subsidy_Type NVARCHAR(255),  
    @Dealer_Subsidy_Amount DECIMAL(18, 2),  
    @INAP_Type NVARCHAR(255),  
    @INAP_Amount DECIMAL(18, 2),  
    @Other_Factor NVARCHAR(255),  
    @CRR_Document NVARCHAR(255),  
    @High_Risk_Approval NVARCHAR(255),  
    @Name_Screening_Result NVARCHAR(255),  
    @Payment_Mode NVARCHAR(255),  
 @Dealer_name NVARCHAR(255)  
   -- @ResponseMessage NVARCHAR(1000) OUTPUT -- Added output parameter  
AS  
  
/*=============================================             
CREATED BY : ARYAN SHEKHAR              
CREATED ON : 17-09-2024              
DESCRIPTION: UPDATE AMENDMENTS FOR POST APPROVAL FINALIZATION                  
EXEC MPI_UPDATE_AMENDMENT_DETAILS  
    @FA_ID = 103839,  -- Replace with actual FA_ID  
    @Car_Brand = N'',  -- Example value for Car Brand  
    @Car_Model = N'Corolla',  -- Example value for Car Model  
    @Car_Variant_Transmission = N'Automatic',  -- Example value for Car Variant & Transmission  
    @Car_Engine_Type = N'Gasoline',  -- Example value for Car Engine Type  
    @Car_Type = N'Sedan',  -- Example value for Car Type  
    @Year_Model = 2024,  -- Example value for Year Model  
    @Net_Cash_Price = 1000000,  -- Example value for Net Cash Price  
    @Term_in_Months = 36,  -- Example value for Term in Months  
    @Downpayment_Percentage = 20,  -- Example value for Downpayment Percentage  
    @Downpayment = 200000,  -- Example value for Downpayment  
    @Amount_Financed_Percentage = 80,  -- Example value for Amount Financed Percentage  
    @Amount_Financed = 800000,  -- Example value for Amount Financed  
    @Add_On_Rate_Percentage = 2.5,  -- Example value for Add On Rate Percentage  
    @Net_Monthly_Installment = 25000,  -- Example value for Net Monthly Installment  
    @Actual_Cash = 25000,  -- Example value for Actual Cash  
    @Total_DI_Percentage = 5,  -- Example value for Total Dealer Incentive Percentage  
    @Total_Dealer_Incentive = 50000,  -- Example value for Total Dealer Incentive  
    @Total_SMC_Percentage = 2,  -- Example value for Total SMC Percentage  
    @Total_Salesman_Commission = 20000,  -- Example value for Total Salesman Commission  
    @Total_INS_CMF_Percentage = 1.5,  -- Example value for Total INS-CMF Percentage  
    @Total_Insurance_Chattel_Fee_PHP = 15000,  -- Example value for Total Insurance/Chattel Fee  
    @Total_Tuck_Ins_Percentage = 1,  -- Example value for Total Tuck-Ins Percentage  
    @NET_Proceeds = 750000,  -- Example value for NET Proceeds  
    @Dealer_Subsidy_Percentage = 3,  -- Example value for Dealer Subsidy Percentage  
    @Total_Dealer_Subsidy = 30000,  -- Example value for Total Dealer Subsidy  
    @INAP_Months = 12,  -- Example value for INAP Months  
    @In_Advance_Payment_Amount = 25000,  -- Example value for In Advance Payment Amount  
    @Promissory_Note_Amount = 15000,  -- Example value for Promissory Note Amount  
    @Other_Deferred_Credit_Interest = 10000,  -- Example value for Other Deferred Credit Interest  
    @Total_Interest = 50000,  -- Example value for Total Interest  
    @Prompt_Payment_Discount = 5000,  -- Example value for Prompt Payment Discount  
    @Gross_Monthly_Installment = 30000,  -- Example value for Gross Monthly Installment  
    @Simple_Interest_Rate = 7.5,  -- Example value for Simple Interest Rate  
    @Margin_Of_Finance = 1.5,  -- Example value for Margin of Finance  
    @EY = 5.5,  -- Example value for EY  
    @IRR = 6.5,  -- Example value for IRR  
    @Doc_Stamps_Tax = 1000,  -- Example value for Doc Stamps Tax  
    @MOF_NET_DI = 50000,  -- Example value for MOF NET DI  
    @Application_Type = N'New',  -- Example value for Application Type  
    @CA_PO = N'PO12345',  -- Example value for CA/PO  
    @Account_Source = N'Branch',  -- Example value for Account Source  
    @Tran_Type = N'',  -- Example value for Tran Type  
    @Dealer_Email = N'dealer@example.com',  -- Example value for Dealer Email  
    @Vehicle_Condition = N'New',  -- Example value for Vehicle Condition  
    @Vehicle_Usage = N'Personal',  -- Example value for Vehicle Usage  
    @Loan_Type = N'Car Loan',  -- Example value for Loan Type  
    @Promo_Code = N'PROMO123',  -- Example value for Promo Code  
    @Promo_Name = N'Big Sale',  -- Example value for Promo Name  
    @Insurance_Type = N'Comprehensive',  -- Example value for Insurance Type  
    @Insurance_Type_Amount = 20000,  -- Example value for Insurance Type Amount  
    @Chattel_Fee_Type = N'Fixed',  -- Example value for Chattel Fee Type  
    @Chattel_Fee_Amount = 5000,  -- Example value for Chattel Fee Amount  
    @Dealer_Subsidy_Type = N'Cash',  -- Example value for Dealer Subsidy Type  
    @Dealer_Subsidy_Amount = 15000,  -- Example value for Dealer Subsidy Amount  
    @INAP_Type = N'Fixed',  -- Example value for INAP Type  
    @INAP_Amount = 10000,  -- Example value for INAP Amount  
    @Other_Factor = N'None',  -- Example value for Other Factor  
    @CRR_Document = N'Doc123',  -- Example value for CRR Document  
    @High_Risk_Approval = N'Approved',  -- Example value for High Risk Approval  
    @Name_Screening_Result = N'Clear',  -- Example value for Name Screening Result  
    @Payment_Mode = N'Auto Debit',
	@Dealer_name=N'';
	
	;  -- Example value for Payment Mode  
    @ResponseMessage = @Response OUTPUT;     
       
============================================================*/    
BEGIN  
    -- Default to success  
	DECLARE @ResponseMessage NVARCHAR(100);

    SET @ResponseMessage = 'Update successful';  
  
    -- Update fia_ex3 table  
    UPDATE fia_ex3  
    SET  
        Fia_ex3_75 = CASE WHEN @Car_Brand != '' AND @Car_Brand IS NOT NULL THEN @Car_Brand ELSE Fia_ex3_75 END,  
        Fia_ex3_77 = CASE WHEN @Car_Model != '' AND @Car_Model IS NOT NULL THEN @Car_Model ELSE Fia_ex3_77 END,  
        Fia_ex3_78 = CASE WHEN @Car_Variant_Transmission != '' AND @Car_Variant_Transmission IS NOT NULL THEN @Car_Variant_Transmission ELSE Fia_ex3_78 END,  
        Fia_ex3_79 = CASE WHEN @Car_Engine_Type != '' AND @Car_Engine_Type IS NOT NULL THEN @Car_Engine_Type ELSE Fia_ex3_79 END,  
        Fia_ex3_76 = CASE WHEN @Car_Type != '' AND @Car_Type IS NOT NULL THEN @Car_Type ELSE Fia_ex3_76 END,  
        Fia_ex3_18 = CASE WHEN @Amount_Financed_Percentage != 0 THEN @Amount_Financed_Percentage ELSE Fia_ex3_18 END,  
        Fia_ex3_40 = CASE WHEN @Total_Insurance_Chattel_Fee_PHP != 0 THEN @Total_Insurance_Chattel_Fee_PHP ELSE Fia_ex3_40 END,  
        Fia_ex3_42 = CASE WHEN @Dealer_Subsidy_Percentage != 0 THEN @Dealer_Subsidy_Percentage ELSE Fia_ex3_42 END,  
        Fia_ex3_46 = CASE WHEN @Promissory_Note_Amount != 0 THEN @Promissory_Note_Amount ELSE Fia_ex3_46 END,  
        Fia_ex3_47 = CASE WHEN @Total_Interest != 0 THEN @Total_Interest ELSE Fia_ex3_47 END,  
        Fia_ex3_43 = CASE WHEN @Prompt_Payment_Discount != 0 THEN @Prompt_Payment_Discount ELSE Fia_ex3_43 END,  
        Fia_ex3_44 = CASE WHEN @Gross_Monthly_Installment != 0 THEN @Gross_Monthly_Installment ELSE Fia_ex3_44 END,  
        Fia_ex3_50 = CASE WHEN @Doc_Stamps_Tax != 0 THEN @Doc_Stamps_Tax ELSE Fia_ex3_50 END,  
        Fia_ex3_6 = CASE WHEN @CA_PO != '' AND @CA_PO IS NOT NULL THEN @CA_PO ELSE Fia_ex3_6 END,  
        Fia_ex3_90 = CASE WHEN @INAP_Type != '' AND @INAP_Type IS NOT NULL THEN @INAP_Type ELSE Fia_ex3_90 END,  
        Fia_ex3_91 = CASE WHEN @Insurance_Type != '' AND @Insurance_Type IS NOT NULL THEN @Insurance_Type ELSE Fia_ex3_91 END,  
        Fia_ex3_92 = CASE WHEN @Chattel_Fee_Type != '' AND @Chattel_Fee_Type IS NOT NULL THEN @Chattel_Fee_Type ELSE Fia_ex3_92 END,  
        Fia_ex3_93 = CASE WHEN @Dealer_Subsidy_Type != '' AND @Dealer_Subsidy_Type IS NOT NULL THEN @Dealer_Subsidy_Type ELSE Fia_ex3_93 END  
    WHERE fia_ex3_id = @FA_ID;  
  
    -- Check if the last statement failed  
    IF @@ERROR <> 0   
    BEGIN  
        SET @ResponseMessage = 'Error in updating fia_ex3 table';  
        RETURN;  
    END  
  
    -- Update fia_ex1 table  
    UPDATE fia_ex1  
    SET  
        Fia_ex1_20 = CASE WHEN @Net_Cash_Price != 0 THEN @Net_Cash_Price ELSE Fia_ex1_20 END,  
        Fia_ex1_21 = CASE WHEN @Amount_Financed != 0 THEN @Amount_Financed ELSE Fia_ex1_21 END,  
        Fia_ex1_22 = CASE WHEN @Downpayment_Percentage != 0 THEN @Downpayment_Percentage ELSE Fia_ex1_22 END,  
        Fia_ex1_24 = CASE WHEN @Term_in_Months != 0 THEN @Term_in_Months ELSE Fia_ex1_24 END,  
        Fia_ex1_25 = CASE WHEN @Net_Monthly_Installment != 0 THEN @Net_Monthly_Installment ELSE Fia_ex1_25 END,  
        Fia_ex1_46 = CASE WHEN @Add_On_Rate_Percentage != 0 THEN @Add_On_Rate_Percentage ELSE Fia_ex1_46 END,  
        Fia_ex1_47 = CASE WHEN @INAP_Months != 0 THEN @INAP_Months ELSE Fia_ex1_47 END,  
        Fia_ex1_51 = CASE WHEN @Total_DI_Percentage != 0 THEN @Total_DI_Percentage ELSE Fia_ex1_51 END,  
        Fia_ex1_52 = CASE WHEN @Total_SMC_Percentage != 0 THEN @Total_SMC_Percentage ELSE Fia_ex1_52 END,  
        Fia_ex1_53 = CASE WHEN @Total_INS_CMF_Percentage != 0 THEN @Total_INS_CMF_Percentage ELSE Fia_ex1_53 END,  
        Fia_ex1_54 = CASE WHEN @Total_Tuck_Ins_Percentage != 0 THEN @Total_Tuck_Ins_Percentage ELSE Fia_ex1_54 END,  
        Fia_ex1_23 = CASE WHEN @INAP_Amount != 0 THEN @INAP_Amount ELSE Fia_ex1_23 END,  
        Fia_ex1_33 = CASE WHEN @Dealer_Email != '' AND @Dealer_Email IS NOT NULL THEN @Dealer_Email ELSE Fia_ex1_33 END,  
        Fia_ex1_137 = CASE WHEN @Payment_Mode != '' AND @Payment_Mode IS NOT NULL THEN @Payment_Mode ELSE Fia_ex1_137 END,  
        Fia_ex1_138 = CASE WHEN @Name_Screening_Result != '' AND @Name_Screening_Result IS NOT NULL THEN @Name_Screening_Result ELSE Fia_ex1_138 END  
    WHERE fia_ex1_id = @FA_ID;  
  
    -- Check if the last statement failed  
    IF @@ERROR <> 0   
    BEGIN  
        SET @ResponseMessage = 'Error in updating fia_ex1 table';  
        RETURN;  
    END  
  
    -- Update fia_ex4 table  
    UPDATE fia_ex4  
    SET  
        Fia_ex4_12 = CASE WHEN @Actual_Cash != 0 THEN @Actual_Cash ELSE Fia_ex4_12 END,  
        Fia_ex4_39 = CASE WHEN @NET_Proceeds != 0 THEN @NET_Proceeds ELSE Fia_ex4_39 END,  
        Fia_ex4_40 = CASE WHEN @Total_Dealer_Incentive != 0 THEN @Total_Dealer_Incentive ELSE Fia_ex4_40 END,  
       Fia_ex4_41 = CASE WHEN @Total_Salesman_Commission != 0 THEN @Total_Salesman_Commission ELSE Fia_ex4_41 END,  
        Fia_ex4_74 = CASE WHEN @Total_Dealer_Subsidy != 0 THEN @Total_Dealer_Subsidy ELSE Fia_ex4_74 END,  
        Fia_ex4_100 = CASE WHEN @In_Advance_Payment_Amount != 0 THEN @In_Advance_Payment_Amount ELSE Fia_ex4_100 END  
    WHERE fia_ex4_id = @FA_ID;  
  
    -- Check if the last statement failed  
    IF @@ERROR <> 0   
    BEGIN  
        SET @ResponseMessage = 'Error in updating fia_ex4 table';  
        RETURN;  
    END  
  
    -- Update fia_ex5 table  
    UPDATE fia_ex5  
    SET  
		Fia_ex5_72=CASE WHEN @Downpayment != 0 THEN @Downpayment ELSE Fia_ex5_72 END,  
        Fia_ex5_10 = CASE WHEN @Simple_Interest_Rate != 0 THEN @Simple_Interest_Rate ELSE Fia_ex5_10 END,  
        Fia_ex5_71 = CASE WHEN @MOF_NET_DI != 0 THEN @MOF_NET_DI ELSE Fia_ex5_71 END,  
        Fia_ex5_99 = CASE WHEN @Year_Model != 0 THEN @Year_Model ELSE Fia_ex5_99 END,  
        Fia_ex5_124 = CASE WHEN @EY != 0 THEN @EY ELSE Fia_ex5_124 END,  
        Fia_ex5_128 = CASE WHEN @Margin_Of_Finance != 0 THEN @Margin_Of_Finance ELSE Fia_ex5_128 END  
    WHERE fia_ex5_id = @FA_ID;  
  
    -- Check if the last statement failed  
    IF @@ERROR <> 0   
    BEGIN  
        SET @ResponseMessage = 'Error in updating fia_ex5 table';  
        RETURN;  
    END  
  
    -- Update fia_ex2 table  
    UPDATE fia_ex2  
    SET  
        Fia_ex2_42 = CASE WHEN @IRR != 0 THEN @IRR ELSE Fia_ex2_42 END,  
        Fia_ex2_87 = CASE WHEN @Application_Type != '' AND @Application_Type IS NOT NULL THEN @Application_Type ELSE Fia_ex2_87 END,  
        Fia_ex2_88 = CASE WHEN @Loan_Type != '' AND @Loan_Type IS NOT NULL THEN @Loan_Type ELSE Fia_ex2_88 END,  
        Fia_ex2_89 = CASE WHEN @Vehicle_Usage != '' AND @Vehicle_Usage IS NOT NULL THEN @Vehicle_Usage ELSE Fia_ex2_89 END,  
        Fia_ex2_90 = CASE WHEN @Account_Source != '' AND @Account_Source IS NOT NULL THEN @Account_Source ELSE Fia_ex2_90 END,  
        Fia_ex2_91 = CASE WHEN @Vehicle_Condition != '' AND @Vehicle_Condition IS NOT NULL THEN @Vehicle_Condition ELSE Fia_ex2_91 END,  
        Fia_ex2_92 = CASE WHEN @Tran_Type != '' AND @Tran_Type IS NOT NULL THEN @Tran_Type ELSE Fia_ex2_92 END  
    WHERE fia_ex2_id = @FA_ID;  
  
    -- Check if the last statement failed  
    IF @@ERROR <> 0   
    BEGIN  
        SET @ResponseMessage = 'Error in updating fia_ex2 table';  
        RETURN;  
    END  
  
    -- If all updates were successful, return success  
    SET @ResponseMessage = 'All updates successful';  

	SELECT @ResponseMessage AS RESPONSEMESSAGE;
END;  
GO


INSERT INTO [dbo].[MashupDataSourceField] (OwnerId,FieldId,DataSourceId,Name,Label,Type,IsSearchable,IsFilterable,IsDisplay,XPath,AddedBy,AddedOn,format,MaskStartPos,MaskTotalChar,MaskChar,ApplyMaskOnNewEdit,ContentNameField,ContentTypeField,IsCastRequired,OutParameterIndex,MaskFormatId,EDSResolverId,GroupID,GroupName,ParentGroupID,MaxLength,AdditionalSettings) VALUES(985,6492,368,N'AmountFinancedPercentage',N'AmountFinancedPercentage',N'String',0,0,0,N'',N'Mr. Aryan Shekhar','2024-09-17 10:32:53',N'',-1,-1,N'*',0,N'',N'',Null,Null,-1,-1,0,N'',0,-1,N'{"MongoOutputFieldMode":3}')
INSERT INTO [dbo].[MashupDataSourceField] (OwnerId,FieldId,DataSourceId,Name,Label,Type,IsSearchable,IsFilterable,IsDisplay,XPath,AddedBy,AddedOn,format,MaskStartPos,MaskTotalChar,MaskChar,ApplyMaskOnNewEdit,ContentNameField,ContentTypeField,IsCastRequired,OutParameterIndex,MaskFormatId,EDSResolverId,GroupID,GroupName,ParentGroupID,MaxLength,AdditionalSettings) VALUES(985,6493,369,N'RESPONSEMESSAGE',N'RESPONSEMESSAGE',N'String',0,0,0,N'',N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',-1,-1,N'*',0,N'',N'',Null,Null,-1,-1,0,N'',0,-1,N'{"MongoOutputFieldMode":3}')
Set identity_insert dbo.MashupParamMapping On 
INSERT INTO [dbo].[MashupParamMapping] (OwnerID,MappingID,DataSourceId,MappingXml,CreatedBy,CreatedOn) VALUES(985,5736,369,N'<mappings><mapping parametername=''FA_ID'' mappedcolumn=''InputParam1'' /><mapping parametername=''Car_Brand'' mappedcolumn=''InputParam2'' /><mapping parametername=''Car_Model'' mappedcolumn=''InputParam3'' /><mapping parametername=''Car_Variant_Transmission'' mappedcolumn=''InputParam4'' /><mapping parametername=''Car_Engine_Type'' mappedcolumn=''InputParam5'' /><mapping parametername=''Car_Type'' mappedcolumn=''InputParam6'' /><mapping parametername=''Year_Model'' mappedcolumn=''InputParam7'' /><mapping parametername=''Net_Cash_Price'' mappedcolumn=''InputParam8'' /><mapping parametername=''Term_in_Months'' mappedcolumn=''InputParam9'' /><mapping parametername=''Downpayment_Percentage'' mappedcolumn=''InputParam10'' /><mapping parametername=''Downpayment'' mappedcolumn=''InputParam11'' /><mapping parametername=''Amount_Financed_Percentage'' mappedcolumn=''InputParam12'' /><mapping parametername=''Amount_Financed'' mappedcolumn=''InputParam13'' /><mapping parametername=''Add_On_Rate_Percentage'' mappedcolumn=''InputParam14'' /><mapping parametername=''Net_Monthly_Installment'' mappedcolumn=''InputParam15'' /><mapping parametername=''Actual_Cash'' mappedcolumn=''InputParam16'' /><mapping parametername=''Total_DI_Percentage'' mappedcolumn=''InputParam17'' /><mapping parametername=''Total_Dealer_Incentive'' mappedcolumn=''InputParam18'' /><mapping parametername=''Total_SMC_Percentage'' mappedcolumn=''InputParam19'' /><mapping parametername=''Total_Salesman_Commission'' mappedcolumn=''InputParam20'' /><mapping parametername=''Total_INS_CMF_Percentage'' mappedcolumn=''InputParam21'' /><mapping parametername=''Total_Insurance_Chattel_Fee_PHP'' mappedcolumn=''InputParam22'' /><mapping parametername=''Total_Tuck_Ins_Percentage'' mappedcolumn=''InputParam23'' /><mapping parametername=''NET_Proceeds'' mappedcolumn=''InputParam24'' /><mapping parametername=''Dealer_Subsidy_Percentage'' mappedcolumn=''InputParam25'' /><mapping parametername=''Total_Dealer_Subsidy'' mappedcolumn=''InputParam26'' /><mapping parametername=''INAP_Months'' mappedcolumn=''InputParam27'' /><mapping parametername=''In_Advance_Payment_Amount'' mappedcolumn=''InputParam28'' /><mapping parametername=''Promissory_Note_Amount'' mappedcolumn=''InputParam29'' /><mapping parametername=''Other_Deferred_Credit_Interest'' mappedcolumn=''InputParam30'' /><mapping parametername=''Total_Interest'' mappedcolumn=''InputParam31'' /><mapping parametername=''Prompt_Payment_Discount'' mappedcolumn=''InputParam32'' /><mapping parametername=''Gross_Monthly_Installment'' mappedcolumn=''InputParam33'' /><mapping parametername=''Simple_Interest_Rate'' mappedcolumn=''InputParam34'' /><mapping parametername=''Margin_Of_Finance'' mappedcolumn=''InputParam35'' /><mapping parametername=''EY'' mappedcolumn=''InputParam36'' /><mapping parametername=''IRR'' mappedcolumn=''InputParam37'' /><mapping parametername=''Doc_Stamps_Tax'' mappedcolumn=''InputParam38'' /><mapping parametername=''MOF_NET_DI'' mappedcolumn=''InputParam39'' /><mapping parametername=''Application_Type'' mappedcolumn=''InputParam40'' /><mapping parametername=''CA_PO'' mappedcolumn=''InputParam41'' /><mapping parametername=''Account_Source'' mappedcolumn=''InputParam42'' /><mapping parametername=''Tran_Type'' mappedcolumn=''InputParam43'' /><mapping parametername=''Dealer_Email'' mappedcolumn=''InputParam44'' /><mapping parametername=''Vehicle_Condition'' mappedcolumn=''InputParam45'' /><mapping parametername=''Vehicle_Usage'' mappedcolumn=''InputParam46'' /><mapping parametername=''Loan_Type'' mappedcolumn=''InputParam47'' /><mapping parametername=''Promo_Code'' mappedcolumn=''InputParam48'' /><mapping parametername=''Promo_Name'' mappedcolumn=''InputParam49'' /><mapping parametername=''Insurance_Type'' mappedcolumn=''InputParam50'' /><mapping parametername=''Insurance_Type_Amount'' mappedcolumn=''InputParam51'' /><mapping parametername=''Chattel_Fee_Type'' mappedcolumn=''InputParam52'' /><mapping parametername=''Chattel_Fee_Amount'' mappedcolumn=''InputParam53'' /><mapping parametername=''Dealer_Subsidy_Type'' mappedcolumn=''InputParam54'' /><mapping parametername=''Dealer_Subsidy_Amount'' mappedcolumn=''InputParam55'' /><mapping parametername=''INAP_Type'' mappedcolumn=''InputParam56'' /><mapping parametername=''INAP_Amount'' mappedcolumn=''InputParam57'' /><mapping parametername=''Other_Factor'' mappedcolumn=''InputParam58'' /><mapping parametername=''CRR_Document'' mappedcolumn=''InputParam59'' /><mapping parametername=''High_Risk_Approval '' mappedcolumn=''InputParam60'' /><mapping parametername=''Name_Screening_Result'' mappedcolumn=''InputParam61'' /><mapping parametername=''Payment_Mode'' mappedcolumn=''InputParam62'' /><mapping parametername=''Dealer_name'' mappedcolumn=''InputParam63'' /></mappings>',1,'2024-09-17 13:01:35')
 Set identity_insert dbo.MashupParamMapping OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,368,N'DOWNPAYMENT_PERCENTAGE',N'Decimal',0,N'Mr. Aryan Shekhar','2024-09-17 10:32:53',N'',9725,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,368,N'FA_ID',N'Integer',0,N'Mr. Aryan Shekhar','2024-09-17 10:32:53',N'',9724,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Account_Source',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9893,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Actual_Cash',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9867,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Add_On_Rate_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9865,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Amount_Financed',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9864,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Amount_Financed_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9863,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Application_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9891,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'CA_PO',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9892,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Car_Brand',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9853,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Car_Engine_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9856,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Car_Model',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9854,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Car_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9857,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Car_Variant_Transmission',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9855,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Chattel_Fee_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9904,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Chattel_Fee_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9903,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'CRR_Document',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9910,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Dealer_Email',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9895,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Dealer_name',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9914,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Dealer_Subsidy_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9906,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Dealer_Subsidy_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9876,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Dealer_Subsidy_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9905,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Doc_Stamps_Tax',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9889,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Downpayment',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9862,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Downpayment_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9861,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'EY',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9887,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'FA_ID',N'Integer',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9852,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Gross_Monthly_Installment',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9884,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'High_Risk_Approval ',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9911,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'In_Advance_Payment_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9879,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'INAP_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9908,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'INAP_Months',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9878,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'INAP_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9907,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Insurance_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9901,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Insurance_Type_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9902,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'IRR',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9888,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Loan_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9898,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Margin_Of_Finance',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9886,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'MOF_NET_DI',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9890,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Name_Screening_Result',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9912,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Net_Cash_Price',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9859,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Net_Monthly_Installment',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9866,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'NET_Proceeds',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9875,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Other_Deferred_Credit_Interest',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9881,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Other_Factor',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9909,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Payment_Mode',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9913,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Promissory_Note_Amount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9880,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Promo_Code',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9899,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Promo_Name',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9900,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Prompt_Payment_Discount',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9883,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Simple_Interest_Rate',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9885,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Term_in_Months',N'Integer',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9860,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Dealer_Incentive',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9869,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Dealer_Subsidy',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9877,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_DI_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9868,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_INS_CMF_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9872,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Insurance_Chattel_Fee_PHP',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9873,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Interest',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9882,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Salesman_Commission',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9871,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_SMC_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9870,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Total_Tuck_Ins_Percentage',N'Decimal',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9874,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Tran_Type',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9894,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Vehicle_Condition',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9896,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Vehicle_Usage',N'String',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9897,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,369,N'Year_Model',N'Integer',0,N'Mr. Aliasger baji','2024-09-17 13:01:35',N'',9858,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF


Update MashupIdList Set LastId = t.MaxId from  (select OwnerID, max ( datasourceid ) as MaxId from dbo.MashupDataSource Group by OwnerID) as t Where  MashupIdList.ItemId = 2   and t.OwnerID =MashupIdList.OwnerID    
Update MashupIdList Set LastId = t.MaxId from  (select OwnerID, max ( FieldId ) as MaxId from dbo.MashupDataSourceField Group by OwnerID) as t Where  MashupIdList.ItemId =3   and t.OwnerID =MashupIdList.OwnerID;

Update DataSourceXslt SET LastModifiedBy = 1 Where OwnerID = 985 ;
Update MashupDataSource SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 985 ;
Update MashupParamMapping SET CreatedBy = 1 Where OwnerID = 985 ;
