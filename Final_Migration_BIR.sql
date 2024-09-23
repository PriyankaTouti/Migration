Delete FROM dbo.AssignmentCustomAction WHERE OwnerID = 985 AND ActionID IN (4076)
Delete FROM dbo.ChangeOwnerCABSettings WHERE OwnerID = 985 AND ActionID IN (4076)
Delete FROM dbo.CustomButtonVisibility WHERE OwnerID = 985 AND ActionID IN (4076)
Delete FROM dbo.CustomActionButton WHERE OwnerID = 985 AND ActionID IN (4076) AND KeyID = 100286

INSERT INTO [dbo].[CustomActionButton] (OwnerID,ActionID,KeyID,ActionType,Caption,Expression,IsActive,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,SQLStatementID,PromptMessage,DisplayOrder,ActivityType,TaskMappingField,EventMappingField,IsAutoAssignment,IsAutoResponse,StartTime,EndTime,FilterExpression,FromID,ToId,RenamedFieldExpression,UniqueID,FriendlyMessage,LayoutType,PrintTemplateId,GeneratePrintLog,IsGenerate,IsGenerateAndAttach,TemplateFolderID,UseDynamicTemplate,PDFFileName,DMSFolderID,CustomValue,IsEditable,TaskLayoutID,EventLayoutID,ShowDropDown,PrePopulateValue,IsPreviewOnly,LastModifiedByType,ShowInWidget,SuccessMessage,LinkObject,ViewMode,MinRecordCount,MaxRecordCount,BatchErrorMessage,DataScope,ScreenFlowIds,EnablePDFViewer,DMSStatusCodeID,DMSStageID,PDFViewerSettingXML,AutoFlowUpdateType,QcSettingId,UploadLocation,AllowExtension,IsOverWrite,IPAddress,ConfigExpression,Icon,FlowMappingExpression) VALUES(985,4076,100286,11,N'BIR Form',N'<mappings />',1,4603,'2024-06-26 10:01:10',4571,'2024-07-16 05:25:35',-1,N'',0,0,N'<Mappings><onerrorfield codevalue="" codetext="" msgvalue="" msgtext="" requestnovalue="" requestnotext="" /></Mappings>',N'<Mappings><onerrorfield codevalue="" codetext="" msgvalue="" msgtext="" requestnovalue="" requestnotext="" /></Mappings>',0,0,Null,Null,N'<expressions><andorexpression value="" /><expression fieldname="LayoutID" op="0" value="10204014" displaytext="Auto Loan" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="0" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /><expression fieldname="StatusCodeId" op="8" value="100117,100033" displaytext="Booked,Sent for Disbursement" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="0" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /></expressions>',N'',-1,N'','7d773e4d-b095-47fb-90c8-294a9b35e715',N'',2,4082,0,0,1,0,0,N'BIR_POC',1,2,0,0,1,0,0,Null,0,0,N'',0,3,0,0,N'',-1,N'',1,0,-1,N'<PrintEmailSettingsInfo sendtouser="3" enableCc="false" enablebcc="false" enablestatuscode="false" emailcaption="Email" templateid="0" activitytriggerid="-1" printcaption="" printtriggerid="-1" downloadcaption="" printtypeoption="0" />',0,0,N'',N'',0,N'192.168.0.168',Null,N'',N'<mappings />')
INSERT INTO [dbo].[CustomButtonVisibility] (OwnerID,ActionID,ViewID,RoleID) VALUES(985,4076,0,0)



Update CustomActionButton SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 985

----------------------------------

Delete FROM dbo.TemplateLanguages WHERE OwnerID = 985 AND TemplateId IN (4082)
Delete FROM dbo.TemplateMaster WHERE OwnerID = 985 AND TemplateId IN (4082) AND CategoryID = 100286

INSERT INTO [dbo].[TemplateMaster] (OwnerID,TemplateID,TemplateName,CategoryID,TypeID,Subject,Description,Body,CreatedOn,CreatedBy,LastModifiedOn,LastModifiedBy,FolderID,BusinessUnitID,IsDefault,UniqueID,PDFText,ReportID,PDFFileName,DMSFolderId,TemplateType,IsEmail,IsSMS,Filters,StatusID,IsText,IsPDF,IsMailMerge,IsMaskFields,IsShowAllOption,ApplyHighLightRule,IsRenderPdf,XMLExpression,LastModifiedByType,AdditionalPDFText,AdditionalPDFName,UnsubscribeCustomMessage,CustomAppRootUrl,DocumentCount,PDFPasswordExpression,UseFor,MOMActionFormat,SurveyId,AttachmentCriteria,IPAddress,PDFHeaderText,PDFFooterText,AdditionalPDFHeaderText,AdditionalPDFFooterText,IsWhatsApp) VALUES(985,4082,N'BIR_POC',100286,-1,N'',N'',N'','2024-06-26 09:58:50',4603,'2024-06-26 09:58:50',4603,0,0,0,'cd927876-71d2-4afe-94fd-77fe76df979b',N'',0,N'',1,3,0,0,N'<expressions><andorexpression value="" /><expression fieldname="LayoutID" op="8" value="10204014,10204012" displaytext="Auto Loan,Loan Application - Auto Loan" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="0" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /></expressions>',-1,0,0,0,0,0,0,0,Null,0,N'',N'',N'',N'',0,N'',Null,Null,-1,N'<expressions><andorexpression value="" /></expressions>',N'192.168.0.168',N'',N'',N'',N'',0)
INSERT INTO [dbo].[TemplateLanguages] (OwnerId,TemplateId,LanguageId,LanguageName,EmailSubject,EmailDescription,SmsSubject,SmsDescription,PrintSubject,PrintDescription,DocumentId,AdditionalSetting,PDFHeader,PDFFooter) VALUES(985,4082,0,N'Default',Null,Null,Null,Null,Null,N'!!BIR!!',0,Null,N'',N'')

Update TemplateMaster SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 985

-------------------------------------

Delete FROM dbo.DATASOURCEXSLT WHERE OwnerID = 985 AND sourceid IN (331)
Delete FROM dbo.MashupQueryParameter WHERE OwnerID = 985 AND DataSourceId IN (331)
Delete FROM dbo.MashupParamMapping WHERE OwnerID = 985 AND DataSourceId IN (331)
Delete FROM dbo.MashupDataSourceField WHERE OwnerID = 985 AND (ParentGroupID IN (SELECT GroupID FROM dbo.MashupDataSourceField where OwnerID = 985 AND GroupID > 0 and Type = 'Collection' and DataSourceId IN (331)) OR FieldId IN (SELECT GroupID FROM dbo.MashupDataSourceField where OwnerID = 985 AND GroupID > 0 and Type = 'Collection' and DataSourceId IN (331)))
Delete FROM dbo.MashupDataSourceField WHERE OwnerID = 985 AND DataSourceId IN (331)
Delete FROM dbo.MashupDataSource WHERE OwnerID = 985 AND DATASOURCEID IN (331)

INSERT INTO [dbo].[MashupDataSource] (OwnerId,DataSourceId,ConnectionId,Name,SourceType,Source,ReturnType,ReturnMode,DataXPath,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,ErrorCodePath,ErrorStringPath,PrimaryField,IsUTCDatetime,ErrorCodeFieldId,ErrorMsgFieldId,TransactionField,SuccessCode,IndexParameter,BatchSize,TotalCountXPath,BatchParameter,UserIdParameter,CurrentTimeField,InputDateTimeFormat,EnableLogging,RetentionPeriod,InitialSymbols,RenameSymbols,XSLT,Description,XSLTReferenceField,RestInvokeMethod,UseEncryption,EncryptionKey,RestInputMode,ImageHeight,ImageWidth,ImageFormat,XSLTTag,CheckForError,CurrentRecordCountPath,ReplyQueue,WaitInterval,InputXSLT,RemoteQueueManagerName,StringMode,LoginIDField,BranchCodeParameter,BranchIDParameter,BranchNameParameter,IPAddressField,EmployeeCodeField,Password,IsSecurityEnabled,ServiceTypeID,IgnoreHtmlEncode,FaultCodeXPath,FaultMessageXpath,FaultXslt,ENCODING,SkipNodeException,PrevPageTokenXPath,NextPageTokenXPath,AdditionalSettings,OutputLogXSLT,UsedBy,KafkaSourceType,ExceptionMessage,AdapterId,UniqueEdsName,IsAuditEnable,IsMetricsEnable) VALUES(985,331,1,N'MPI - BIR Template',4,N'MPI_FETCH_TIN_NO_BIR',17,1,N'',N'Priyanka Touti','2024-06-26 08:43:51',N'Priyanka Touti','2024-08-28 06:30:32',N'',N'',N'-1',0,-1,-1,N'None',N'',Null,0,N'',Null,N'None',N'None',Null,1,2,Null,Null,N'<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
xmlns:cs="urn:cs"
xmlns:msxsl="urn:schemas-microsoft-com:xslt"
exclude-result-prefixes="msxsl cs">
  <msxsl:script language="CSharp" implements-prefix="cs">
    <![CDATA[
 public static string getformatter(double number)
        {
			string formattedNumber = number.ToString("#,0.00"); 
			return formattedNumber;
        }

]]>
  </msxsl:script>

  <xsl:template match="/">
    <html>
      <body>
        <xsl:for-each select="NewDataSet/Table">
          <div class="ScrollCustomCRM_AU_ECRM">

            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:Trebuchet MS;border-bottom:2px solid black;width:100%">
              <thead>
                <tr>
                  <td colspan="10">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tr>
                        <td style="width: 10%; padding:7px;">
                          <span style="background-color:#e1ddcd;">For BIR</span>
                          <br />
                          <span style="background-color:#e1ddcd;">Use Only</span>
                        </td>
                        <td style="width:1%;padding:7px;">
                          <span style="margin-left:5px;">BCS/</span>
                          <br />
                          <span style="margin-left:5px;">Item:</span>
                        </td>
                        <td>
                          <img alt="logo2" src="data:image/jpeg;base64,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" style="margin-left:250px;height:50px; width:50px;color:#000000; font-size:13px;" />
                        </td>
                        <td style="color:#000000; font-size:20px;width:57%;">
                          <strong>Republic of the Philippines</strong>
                          <br />
                          <span style="margin-left:10px;">
                            <strong>Department of Finance</strong>
                          </span>
                          <br />
                          <strong>Bureau of Internal Revenue</strong>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tr>
                        <td style="width: 30%;text-align:center;border-right: 1px solid black;border-top:2px solid black;border-left:2px solid black;">
                          BIR Form No.<br />
                          <span style="font-size:40px;">
                            <strong>2307</strong>
                          </span><br />
                          January 2018 (ENCS)
                        </td>
                        <td style="width:70%;text-align:center;font-size:30px;border-right: 1px solid black;border-top:2px solid black;">
                          <strong>Certificate of Creditable</strong>
                          <br />
                          <strong>Tax Withheld at Source</strong>
                          <br />
                        </td>
                        <td style="text-align:right;border-right: 2px solid black;border-top:2px solid black;border-left:1px solid black;width:80%;">
                          <img alt="logo2" src="data:image/jpeg;base64,iVBORw0KGgoAAAANSUhEUgAAAKIAAAAiCAIAAABTIJWUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAu0SURBVHhe7Zt3jFXVFsYvVUA60iECYSgiVUrogiOBOJEuRnqRACGGUAUSakJvIwQzKEQQBKQmFEOT3kILoQgBEf6AGUA6CdLf757v3PU2Z+YO7/3xdMi7XwLsvfY666yzvn32WnufS+jly5c//PBD6HUoUKAAmp9//nnNmjVpvPPOO2PGjPnzzz8Z2rJlCxKhZ8+e0hcqVaqE8IMPPvjss89oIFm+fPnJkyc1ati+fbt3tY9ff/1V8qlTp+oWR48eXblyJY1bt275ShGcO3fO0w11797dF0VQqFChIUOG+B0Pt2/fLliwIMrx8fF0K1eurGuB64M9BXcfP348dhDyFK1bt5YCMCfHjh3ri5xILlq0yBd5MCddyAc3kjzm+vXrNerCbvHRRx/5olSwULtObtu2jaGbN2/GaPYRozmMGM0xmmM0+4jR7NO8YsWK48ePa9QQjea5c+c+f/6cxrFjx3788UcaL1688JUiuHr1qqcb6tu3ry+KAJ9Hjx7tdyKAM5QbNGhAu2TJkroW7Nu3Twqga9euEhIgaOZhEdarV69jx45SADy1dMaNG+eLnEh+++23vshDmjS3atWKoaxZsxLJZ8+eIfntt982b96sURfDhw+XnTeG5iVLlly+fJl4CS1btkSIN97VPozmzp07L1y4kMbBgwcPHDjQpk0b3pIrV67cvXv35whQwE7RokWbNm0qyaVLl2SnRIkSCQkJEgpcnjt3bjgePHgw3QEDBlSpUiV79uxYmDdvnnTAsGHDPO863r9/H5rz5MmDsFy5cnXq1Fm3bt3jx48xfvr0aRS41p1J2MdbAs0jpKSkcNW9e/eQp0lz1apVUejSpQsvK5MYa0lJSd98843M+kqhECFCTfbfGJrnz5/vKfq4du0aQtcCMJoNmge8yrQXL17srgelSpVi6JNPPvH7zpvkrskutm7dyntD46+//po2bZpe1iZNmmgUMBdlAfCy+lIPmTJl4qn9MS8OzBi/8/LlggUL0GEFoq338tSpU7TTpFl4+vQpM4l3GjUcZirT0JIjECIkwhtDc2A1U7hfS7NWdTIr7UB21y1atGjh9528yJAvehVr167VRNGarNSbpgUQoJk4uPVBIP2LZikoxGfPnqWdDs3E0E3/CpQKCIEQIRFiNMdojtH8KmI0R8V/SHOvXr2kL1DKInzvvffInTSQkFk9RR8UMgg3btzo9z1Eo5nw0V69evUff/whOaCGYijN3ByNZm53/vx5Gjdu3CDEPEvAQjo0k5uVegX4cEuwpUuXokNYaO/fv5/2a3MzHHz99ddZsmRBrVatWlRkNGDdHw6FCBESIaPQzGQsW7YslSHVaYcOHWhQN86YMYM6+eHDh1S5+IFEYJRSlr+Tk5P96z1AKma///5729iIZkpclAmK3jxqbBS4EaaotJG8/fbbMGSVtmim3uYqwI6LLg0K6T59+tCgBINFVdqyIESjmShTaRNHijiN8rAVK1b0niaM2rVr4wN+zpkzB9+4hSptLVpTpkwZNGgQDeQNGzZ89913aaB85swZtsuoUQaWLl0aO6q0mcEoECLvVmFkFJopFNl10ChcuPDkyZOfPHmCwt69e5HwLrqTFNh2MAA5x1aSslyaollgvkvIW2UKAu+Wu7EWzawl6i5btowujXbt2rE7kjDwsgrRaB44cCASGrNnz9YoxjVkwAfkbOTKly8vHSCaL1y4sGnTJhpIunXrpki6iI+P92z4YDb7AxFkFJrbtm0bTcFOoAzu+ZELc45lQJouzZb+MW4KQiBximbeNnWVOGnwFNWqVZPwv6L5yy+/REIjnbxggbJbANFsZ3lIAgpCgMVmzZr5AxHEaA4jRvM/STMlFRJyc4DmCRMmeBcFIee4durUqdK0XAi6d+8uoTsPBPLigwcPfL3I8Yitz5BHlwZFg4ICJk6c6F36CgiIRoFLc79+/ZDQmDdvnkZTn8DgA/IvvviievXq0gHU2wyxQVi1ahUNJBQxlk0MH374oWfDB6T6AxFkaJqpjXnJfv/9d4wQBcgG1JbkZuQCk0AWgJy7fv060ZTy7t27KZekySslIe3p06eHnQuFKMSQlClT5uLFi2jKDu9xzpw5qRV0IQmVOpnkTf3VuHFjFO7evTtixAjXgpCUlMSQjLDkcBXCbNmykVBZk3gKZgxlBzbj4uJ0ufDWW28xq9Ah/VNA6b6PHj1SYc90pxTHFEJM1a9fXwoGqn1Gsc8d0W/UqJE/cOuW/MmgNOMfChTYXJ4/f368hzmiAAhQjhw5kAv9+/eXBSDnWOgIkJSfPn36008/SZO1V0IIYzsUdi4UolJFcvny5Xz58tmSiw/MJIS6MFeuXPiAGlNKBXDdunXxwbUg8KoRYhlhHhB6hCyhsEhpzXxlJu3ZswebTFZdLkDenTt30KFUZkj3TUxMVKCYSTwmphAuWbKE3YcUDOz0GGWnQBv9rFmzSg5wFWfczX0A/zzNLuy4OLDcde7cWXIg59hm+H0PWnJBmisqrztd+KNtKyr0MA/YkEgH8BS4pFHAm+cPRCwIRAr31Gai6OxCX1ksL2jXF4BWdaa13/cwadIkyFO7d+/eKNAgSfOAEhp27tzJaOrsBpR63hia7VXDLV/kwf1aLOd0fmQwJ80CMJpVoymaVh9BT8CHAM2uD26Vx1NYfWQ0K8RmIfUZDlCNFiCJCsN8sCIune/uPEVqmsVijOYYzX8jzXY8oq/l+lGACyOpWLFivshDjx49JAdy7urVq37fgznpfiW0Aoo8R1fRtLMLfJ48eTJ5XToCPmsUUCX50ldp7tSpU9WqVdUeNmwYD0uDqk2asnDo0CF1Xej8RAWUgbloi7YdsKxZs4YcL6EhHZoJF0MZhWY77NTXcgrLjlHOEQcNGuSdD4ZBZcQORHLA06I5a9Ys7Pzyyy8SciFClNlEIQckXfYnsjBz5sx9+/aR1Wjb7qtEiRLsnaSD/3TZcyuzUsZjwf31iEL8+PFjajHqndq1a3s2Xo4cOZLSCeWvvvoKO7Kwf/9+3Avf2IPSNqASXrduHTqlS5emGNQoBvVZ3RQQ4vB3331HI2/evBoCAZqLFCniGQiDcDH08ccfSzM1/laa7dOF+7U82lcBA859+umnfufV9VCzGNjhBtshDbln+hUqVEi9y1SVp88nMAflkgOmgowYFGLWg8yZM9Nt3ry5NK2Yd39FRLjds8zk5GTpAF5lJIGzTB2PCFJo3749PtN4//33/YFUNHOX8MUOMsqGyj2iIkBuVhPSpLlGjRqucy7Nqc+wqGY1ROw0BAIWBJ4ctTSfP3VmDYTYTqAC6V9wkzdwP0BZoF6roEi6O45oPhhiNMdojtEco5nO/4LmZ8+e2a/prEYFbp1sqF69ups4XQ6UWYG+2NPo3bu3hlyay5UrFy03Fy9enHZcXJyrcOTIERkxqNZ78eIFU5OulWCWmym7JAFkzTJlyvidV3MzDCFJJzdLoV27dsrNpUqV8gdCocOHDyMxH+rVqxe+2EGGo5mb2W9jFy9ebJ/TR40apdJRUAHZtGlTtwxmUqOsSlu/zwXEHSENtsX6pOFurCmprESaPn06m10aTJGEhATxxwOrFOcuGNFHAoyzNcidOzc3SklJ2bVrFxtCfO7fv78OpIBV2lzIxJUQyu2pqeRVaTPK7kuPHK3SBlJITExMSkqigWX79QRxQCIfhg4dStzC13s6uleGo9nF+fPn7XO61cmCCmnbkGCQrpzTvtl+bW/YsGGDdpyB8xNDfHy8jgZ5JwI/x6eQdje1bOvhRpkFEHfJV65cKQmwfTNrg5XfLmzvfunSpR07dqjtwt03G+yHSmzhAj+OEAjChQsX1NasBRma5hMnTth3VsusgpxT8uYWOmCSc2LRzWqC/WAvGs3uSVy0/1wj4D9rslZRYHFwCwg7BQtE0GDJm8fkxVXbhXsKZnB/dhj4nCqgYMdk9mE+RvO/EaNZyiBGcxj/TzTzb+RPOojR/AbTfPPmvwDCg6tmPhwxKgAAAABJRU5ErkJggg==" style="height:50px; width:250px;float:center;" /><br />
                          2037 01/18ENCS
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="border-color:black; border-style:solid; border-width:2px">
                    <span style="margin-left:10px;">Fill in all applicable spaces. Mark all appropriate boxes with an "X".</span>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;text-align: center; padding: 5px;">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="width: 25%;">
                            <span style="margin-left:10px;">
                              <strong>		1</strong>	For the Period
                            </span>
                          </td>
                          <td style="width: 5%; text-align: center;">From</td>
                          <td>
                            <span style="border:1px solid black;background-color:white;width:150px;padding: 3px;">
                              <xsl:value-of select="Month" />
                            </span><span style="border:1px solid black;background-color:white;width:150px;padding: 3px;">
                              <xsl:value-of select="Start_Day" />
                            </span><span style="border:1px solid black;background-color:white;padding: 3px;width:200px;">
                              <xsl:value-of select="Year" />
                            </span>		(MM/DD/YYYY)
                          </td>
                          <td style="width: 5%; text-align: center;">To</td>
                          <td>
                            <span style="border:1px solid black;background-color:white;width:150px;padding: 3px;">
                              <xsl:value-of select="Month" />
                            </span><span style="border:1px solid black;background-color:white;width:150px;padding: 3px;">
                              <xsl:value-of select="End_Day" />
                            </span><span style="border:1px solid black;background-color:white;padding: 3px;width:200px;">
                              <xsl:value-of select="Year" />
                            </span>		(MM/DD/YYYY)
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>Part I - Payee Information</strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;text-align: center; padding: 5px;">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="width: 45%;">
                            <span style="margin-left:10px;">
                              <strong>		2</strong>	Taxpayer Identification Number<em>(TIN)</em>
                            </span>
                          </td>
                          <td>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">
                              <xsl:value-of select="TIN_NO1" />
                            </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">
                              <xsl:value-of select="TIN_NO2" />
                            </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">
                              <xsl:value-of select="TIN_NO3" />
                            </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">  0 0 0  </span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;">
                    <span style="margin-left:15px;">
                      <strong>		3</strong>	Payee''s Name
                    </span>
                    <em> (Last Name, First Name, Middle Name for Individual OR Registered name for Non-Individual)</em>
                    <div style="background-color:#ffffff; border:1px solid black; float:left; margin-bottom:0; margin-left:25px; margin-right:120px; margin-top:0; padding:5px; width:1000px;height:15px;">
                      <xsl:value-of select="RECORDNAME" />
                    </div>
                    <br />
                    <br />
                    <br />
                    <span style="margin-left:15px;">
                      <strong>		4</strong>	Registered Address
                    </span>
                    <span style="margin-right:60px;float:right;">
                      <strong>4A</strong> ZIP Code
                    </span>

                    <span style="background-color:#ffffff; border:1px solid black; float:left; margin-bottom:0; margin-left:25px; margin-right:120px; margin-top:0; padding:5px; width:800px;height:15px;">
                      <xsl:value-of select="ADDRESS" />
                    </span >
                    <span style="background-color:#ffffff; border:1px solid black; float:right; margin-bottom:0; margin-right:50px; margin-top:0; padding:5px;width:110px;height:15px;"></span>
                    <br />
                    <br />
                    <br />
                    <span style="margin-left:15px;">
                      <strong>		5</strong>	Foregin Address, <em> if applicable</em>
                    </span>

                    <div style="background-color:#ffffff; border:1px solid black; float:left; margin-bottom:0; margin-left:25px; margin-right:120px; margin-top:0; padding:5px; width:1000px;height:15px;"></div>
                    <br />
                    <br />
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>Part II - Payor Information</strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;text-align: center; padding: 5px;">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="width: 45%;">
                            <span style="margin-left:10px;">
                              <strong>		6</strong>	Taxpayer Identification Number<em>(TIN)</em>
                            </span>
                          </td>
                          <td>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">  0 0 0  </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">  8 8 8  </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">  5 4 3  </span>
                            <span style="border:1px solid black;background-color:#B0ABA1;width:50px;padding: 3px;"> - </span>
                            <span style="border:1px solid black;background-color:white;width:100px;padding: 3px;">  0 0 0  </span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>

                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;">
                    <span style="margin-left:15px;">
                      <strong>		7</strong>	Payor''s Name
                    </span>
                    <em> (Last Name, First Name, Middle Name for Individual OR Registered name for Non-Individual)</em>
                    <div style="background-color:#ffffff; border:1px solid black; float:left; margin-bottom:0; margin-left:25px; margin-right:120px; margin-top:0; padding:5px; width:1000px;height:15px;">MAYBANK PHILIPPINES, NIC.</div>
                    <br />
                    <br />
                    <br />
                    <span style="margin-left:15px;">
                      <strong>		8</strong>	Registered Address
                    </span>
                    <span style="margin-right:60px;float:right;">
                      <strong>8A</strong> ZIP Code
                    </span>

                    <span style="background-color:#ffffff; border:1px solid black; float:left; margin-bottom:0; margin-left:25px; margin-right:120px; margin-top:0; padding:5px; width:800px;height:15px;">MAYBANK CORPORATE CENTER 7TH AVE COR 28TH AVE, BONIFACIA GLOBAL CITY, TAGUIG CITY</span >
                    <span style="background-color:#ffffff; border:1px solid black; float:right; margin-bottom:0; margin-right:40px; margin-top:0; padding:5px;width:110px;height:15px;"> 1 6 3 4 </span>
                    <br />
                    <br />
                    <br />
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>Part III - Details of Monthly Income Payments and Taxes Withheld</strong>
                  </td>
                </tr>
                <tr>
                  <th rowspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black; border-left:2px solid black;">
                    <strong>Income Payments Subject to Expanded Withholding Tax</strong>
                  </th>
                  <th rowspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>ATC</strong>
                  </th>
                  <th colspan="7" style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>AMOUNT OF INCOME PAYMENTS</strong>
                  </th>
                  <th rowspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-right:2px solid black;">
                    <strong>Tax Withheld for the Quarter</strong>
                  </th>
                </tr>
                <tr>
                  <th colspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>1st month of the Quarter</strong>
                  </th>
                  <th colspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>2nd month of the Quarter</strong>
                  </th>
                  <th colspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>3rd month of the Quarter</strong>
                  </th>
                  <th style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>Total</strong>
                  </th>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Gross commission or service fees of custom,insurance,stock, real </span>
                    <span style="margin-left:10px;">estate,immigration and commerical brokers &amp; fees of agents of </span>
                    <span style="margin-left:10px;">professional entertainers</span>
                  </td>
                  <td style="border:1px solid black;text-align:center;">WTC140</td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(first_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(second_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(third_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align: right;">
                    <xsl:value-of select="cs:getformatter(GROSS_PHP)" />
                  </td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align: right;">
                    <xsl:value-of select="cs:getformatter(WHT_PHP)" />
                  </td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:right;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;">-</td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-left:2px solid black;text-align:center;">
                    <strong>Total</strong>
                  </td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(first_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(second_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align:right;" colspan="2">
                    <xsl:value-of select="cs:getformatter(third_Quarter)" />
                  </td>
                  <td style="border:1px solid black;text-align:right;">
                    <xsl:value-of select="cs:getformatter(GROSS_PHP)" />
                  </td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:right;">
                    <xsl:value-of select="cs:getformatter(WHT_PHP)" />
                  </td>
                </tr>
                <tr>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-left:2px solid black;">
                    <strong>
                      <span style="margin-left:10px;">Money Payments Subject to Withholding of Business Tax (Government </span>
                      <span style="margin-left:10px;">and Private)</span>
                    </strong>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td colspan="2" style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td colspan="2" style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td colspan="2" style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;text-align:right;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;text-align:left;"></td>
                </tr>
                <tr>
                  <td	style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td	style="border:1px solid black;"></td>
                  <td	style="border:1px solid black;" colspan="2"></td>
                  <td	style="border:1px solid black;" colspan="2"></td>
                  <td	style="border:1px solid black;" colspan="2"></td>
                  <td	style="border:1px solid black;"></td>
                  <td	style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;">.</td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="border:1px solid black;border-left:2px solid black;">.</td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-left:2px solid black;">
                    <strong>Total</strong>
                  </td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;" colspan="2"></td>
                  <td style="border:1px solid black;"></td>
                  <td style="border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">
                    <span style="margin-left:10px;">We declare under the penalties of perjury that this certificate has been made in good faith, verified by us, and to the best of our knowledge and belief, is </span>
                    <span style="margin-left:10px;">true and correct, pursuant to the provisions of the National Internal Revenue Code, as amended, and the regulations issued under authority thereof. Further, </span>
                    <span style="margin-left:10px;">
                      we give our consent to the processing of our information as contemplated under the *Data Privacy Act of 2012 (R.A. No. 10173) for legitimate and lawful </span>
                        <span style="margin-left:10px;">purposes.</span>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="text-align:center;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">NAME OF BIR FORM SIGNATORY</td>
                </tr>
                <tr>
                  <td colspan="10" style="text-align:center;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">POSITION</td>
                </tr>
                <tr>
                  <td colspan="10" style="text-align:center;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">TIN #</td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">
                    Signature over Printed Name of Payor/Payor''s Authorized Representative/Tax Agent<br />
                    <em>(Indicate Title/Designation and TIN)</em>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;text-align: center; padding: 5px;">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="width: 20%;text-align:center;">
                            Tax Agent Accreditation No./ <br />Attorney''s Roll No. (if applicable)
                          </td>
                          <td style="width: 5%;">
                            <span style="background-color:#ffffff; border:1px solid black; float:right; margin-bottom:0; margin-right:40px; margin-top:0; padding:7px;width:300px;height:20px;"></span>
                          </td>
                          <td style="width: 10%;">
                            <span>Date of Issue</span>
                            <br />
                            <span>(MM/DD/YYYY)</span>
                          </td>
                          <td style="width: 10%;">
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                          </td>
                          <td style="width: 10%;">
                            <span>Date of Expiry</span>
                            <br />
                            <span>(MM/DD/YYYY)</span>
                          </td>
                          <td style="width: 10%;">
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>CONFORME:</strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="border-left:2px solid black;border-right:2px solid black;">
				  <br />
				  <br />
				  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-left:2px solid black;border-right:2px solid black;">
                    Signature over Printed Name of Payee/Payee''s Authorized Representative/Tax Agent<br />
                    <em>(Indicate Title/Designation and TIN)</em>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd;border-color:black; border-style:solid; border-width:2px;text-align: center; padding: 5px;">
                    <table style="width: 100%; border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="width: 20%;text-align:center;">
                            Tax Agent Accreditation No./ <br />Attorney''s Roll No. (if applicable)
                          </td>
                          <td style="width: 5%;">
                            <span style="background-color:#ffffff; border:1px solid black; float:right; margin-bottom:0; margin-right:40px; margin-top:0; padding:7px;width:300px;height:20px;"></span>
                          </td>
                          <td style="width: 10%;">
                            <span>Date of Issue</span>
                            <br />
                            <span>(MM/DD/YYYY)</span>
                          </td>
                          <td style="width: 10%;">
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                          </td>
                          <td style="width: 10%;">
                            <span>Date of Expiry</span>
                            <br />
                            <span>(MM/DD/YYYY)</span>
                          </td>
                          <td style="width: 10%;">
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                            <span style="border:1px solid black;background-color:white;width:30px; height:30px; display:inline-block;"></span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td colspan="10">
                    <span>*NOTE: The BIR Data Privacy is in the BIR website (www.bir.gov.ph)</span>
                    <br />
					<span><xsl:value-of select="Subject" /></span>
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="border-color:black; border-style:solid; border-width:2px; text-align:center">
					<br />
                    <strong>SCHEDULES OF ALPHANUMERIC TAX CODES</strong>
					<br />
                  </td>
                </tr>
                <tr>
                  <th colspan="8" rowspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-left:2px solid black;">
                    <strong>A Income Payments subject to Expanded Withholding Tax</strong>
                  </th>
                  <th colspan="2" style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-right:2px solid black;">
                    <strong>ATC</strong>
                  </th>
                </tr>
                <tr>
                  <th style="background-color:#e1ddcd; text-align:center;border:1px solid black;">
                    <strong>Individual</strong>
                  </th>
                  <th style="background-color:#e1ddcd; text-align:center;border:1px solid black;border-right:2px solid black;">
                    <strong>Corporation</strong>
                  </th>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional (Lawyers, CPAs, Engineers, etc.)</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI010<br />
                    WI011
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional (Lawyers, CPAs, Engineers, etc.)</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC010<br />
                    WC011
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional entertainers such as, but not limited to actors and actresses, singers,</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI020<br />
                    WI021
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional entertainers such as, but not limited to actors and actresses, singers,</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC020<br />
                    WC021
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional athletes including basketball players, pelotaris and jockeys</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI030<br />
                    WI031
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional athletes including basketball players, pelotaris and jockeys</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC030<br />
                    WC031
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">All directors and producers involved in movies, stage, radio, television and musical</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI040<br />
                    WI041
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">All directors and producers involved in movies, stage, radio, television and musical</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC040<br />
                    WC041
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Management and technical consultants</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI050<br />
                    WI051
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Management and technical consultants</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC050<br />
                    WC051
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Business and bookkeeping agents and agencies</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI060<br />
                    WI061
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Business and bookkeeping agents and agencies</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC060<br />
                    WC061
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Insurance agents and insurance adjusters</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI070<br />
                    WI071
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Insurance agents and insurance adjusters</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC070<br />
                    WC071
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Other recipients of talent fees</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI080<br />
                    WI081
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Other recipients of talent fees</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC080<br />
                    WC081
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Fees of directors who are not employees of the company</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI090<br />
                    WI091
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">
                      Rentals: On gross rental or lease for the continued use or possession of personal property in excess of Ten thousand pesos <br />
                    </span>
                    <span style="margin-left:10px;">
                      (P 10,000) annually and real property used in business which the payor or obligor has not taken title or is not taking title, or in <br />
                    </span>
                    <span style="margin-left:10px;">which has no equity; poles, satellites, transmission facilities and billboards</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI100</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WI100</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Cinematographic film rentals and other payments to resident individuals and corporate cinematographic film owners, lessors or </span>
                    <span style="margin-left:10px;">distributors</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI110</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WI110</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments to certain contractors</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI120</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WI120</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income distribution to the beneficiaries of estates and trusts</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI130</td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Gross commissions or service fees of customs, insurance, stock, immigration and commercial brokers, fees of agents of </span>
                    <span style="margin-left:10px;">professional entertainers and real estate service Practitioners (RESPs), (i.e. real estate consultants, real estate appraisers and real </span>
                    <span style="margin-left:10px;">estate brokers)</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    <br />
                    WI139<br />
                    WI140
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Gross commissions or service fees of customs, insurance, stock, immigration and commercial brokers, fees of agents of </span>
                    <span style="margin-left:10px;">professional entertainers and real estate service Practitioners (RESPs), (i.e. real estate consultants, real estate appraisers and real </span>
                    <span style="margin-left:10px;">estate brokers)</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    <br />
                    WC139<br />
                    WC140
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional fees paid to medical practitioners (includes doctors of medicine, doctors of veterinary science &amp; dentists) by hospitals </span>
                    <span style="margin-left:10px">&amp; clinics or paid directly by Health Maintenance Organizations (HMOs) and/or similar establishments</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    <br />
                    WI151<br />
                    WI150
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Professional fees paid to medical practitioners (includes doctors of medicine, doctors of veterinary science &amp; dentists) by hospitals </span>
                    <span style="margin-left:10px">&amp; clinics or paid directly by Health Maintenance Organizations (HMOs) and/or similar establishments</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    <br />
                    WC151<br />
                    WC150
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Payment by the General Professional Partnerships (GPPs) to its partners</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WI152<br />
                    WI153
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments made by credit card companies</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI156</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC156</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Additional income payments to government personnel from importers, shipping and airline companies or their agents for overtime </span>
                    <span style="margin-left:10px">services</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI159</td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments made by the government and government-owned and controlled corporations (GOCCs) to its local/resident </span>
                    <span style="margin-left:10px">suppliers of goods other than those covered by other rates of withholding tax</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI640</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC640</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments made by the government and government-owned and controlled corporations (GOCCs) to its local/resident </span>
                    <span style="margin-left:10px">suppliers of goods other than those covered by other rates of withholding tax</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI157</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC157</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payment made by top withholding agents to their local/resident supplier of goods other than those covered by other rates </span>
                    <span style="margin-left:10px">of withholding tax</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI158</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC158</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payment made by top withholding agents to their local/resident supplier of goods other than those covered by other rates </span>
                    <span style="margin-left:10px">of withholding tax</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI160</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC160</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Commissions, rebates, discounts and other similar considerations paid/granted to independent and/or exclusive sales </span>
                    <span style="margin-left:10px">representatives and marketing agents and sub-agents of companies, including multi-level marketing companies</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 3M</span>
                    <br />
                    <span style="margin-left:30px;">If gross income is more than P 3M or VAT Registered regardless of amount</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    <br />
                    WI515<br />
                    WI516
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Commissions, rebates, discounts and other similar considerations paid/granted to independent and/or exclusive sales </span>
                    <span style="margin-left:10px">representatives and marketing agents and sub-agents of companies, including multi-level marketing companies</span>
                    <br />
                    <span style="margin-left:30px;">If gross income for the current year did not exceed P 720,000</span>
                    <br />
                    <span style="margin-left:30px;">If gross income exceeds P 720,000</span>
                  </td>
                  <td style="background-color:#e1ddcd;border:1px solid black;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    <br />
                    WC515<br />
                    WC516
                  </td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Gross payments to embalmers by funeral parlors</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI530</td>
                  <td style="background-color:#e1ddcd;border:1px solid black;border-right:2px solid black;"></td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Payments made by pre-need companies to funeral parlors</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI535</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC535</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tolling fees paid to refineries</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI540</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC540</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments made to suppliers of agricultural products in excess of cumulative amount of P 300,000 within the same taxable </span>
                    <span style="margin-left:10px">year</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI610</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC610</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments on purchases of minerals, mineral products and quarry such as but not limited to silver, gold, marble, granite, </span>
                    <span style="margin-left:10px">gravel, sand, boulders and other mineral products except purchases by Bangko Sentral ng Pilipinas</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI630</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC630</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments on purchases of minerals, mineral products and quarry resources by Bangko Sentral ng Pilipinas (BSP) from gold </span>
                    <span style="margin-left:10px">miners/suppliers under PD 1899, as amended by RA No. 7076</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI632</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC632</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of refund given by MERALCO to customers with active contracts as classified by MERALCO</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI650</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC650</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of refund given by MERALCO to customers with terminated contracts as classified by MERALCO</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI651</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC651</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of interest on the refund of meter deposit whether paid directly to the customers or applied against customer''s </span>
                    <span style="margin-left:10px">billings of Residential and General Service customers whose monthly electricity consumption exceeds 200 kwh as classified by </span>
                    <span style="margin-left:10px">MERALCO</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI660</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC660</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of interest on the refund of meter deposit whether paid directly to the customers or applied against customer''s </span>
                    <span style="margin-left:10px">billings of Non-Residential customers whose monthly electricity consumption exceeds 200 kwh as classified by MERALCO</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI661</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC661</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of interest on the refund of meter deposit whether paid directly to the customers or applied against customer''s </span>
                    <span style="margin-left:10px">billings of Residential and General Service customers whose monthly electricity consumption exceeds 200 kwh as classified by </span>
                    <span style="margin-left:10px">other electric Distribution Utilities (DU)</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI662</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC662</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">On gross amount of interest on the refund of meter deposit whether paid directly to the customers or applied against customer''s </span>
                    <span style="margin-left:10px">billings of Non-Residential and General Service customers whose monthly electricity consumption exceeds 200 kwh as classified by </span>
                    <span style="margin-left:10px">other electric Distribution Utilities (DU)</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI663</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC663</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments made by political parties and candidates of local and national elections on all their purchases of goods and </span>
                    <span style="margin-left:10px">services related to campaign expenditures, and income payments made by individuals or juridical persons for their purchases of </span>
                    <span style="margin-left:10px">goods and services intended to be given as campaign contributions to political parties and candidates</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI680</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC680</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments received by Real Estate Investment Trust (REIT)</span>
                  </td>
                  <td style="background-color:#e1ddcd;"></td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC690</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Interest income derived from any other debt instruments not within the coverage of deposit substitutes and Revenue Regulations </span>
                    <span style="margin-left:10px">No. 14-2012</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI710</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WI710</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Income payments on locally produced raw sugar</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">WI720</td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WC720</td>
                </tr>
                <tr>
                  <td colspan="8" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Sale of Real Property (Ordinary Asset)</span>
                    <span style="marigin-left:20px"></span>
                    <br />
                    <span style="margin-left:150px">1.5%</span>
                    <br />
                    <span style="margin-left:150px">3%</span>
                    <br />
                    <span style="margin-left:150px">5%</span>
                    <br />
                    <span style="margin-left:150px">6%</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;">
                    <br />
                    WI555<br />
                    WI556<br />
                    WI557<br />
                    WI558
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WC555<br />
                    WC556<br />
                    WC557<br />
                    WC558
                  </td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>B Money Payments Subject to Withholding of Business Tax by Government or Private Payor (Individual &amp; Corporate)</strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Persons Exempt from VAT under Sec. 109BB (creditable)-Government Withholding Agent</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB080</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Persons Exempt from VAT under Sec. 109BB (creditable)-Private Withholding Agent</span>
                  </td>
                  <td  style="text-align:center;border:1px solid black;border-right:2px solid black;">WB082</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">VAT Withholding on Purchases of Goods (with waiver of privilege to claim input tax credit) (creditable)</span>
                  </td>
                  <td  style="text-align:center;border:1px solid black;border-right:2px solid black;">WV012</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">VAT Withholding on Purchases of Services (with waiver of privilege to claim input tax credit) (creditable)</span>
                  </td>
                  <td  style="text-align:center;border:1px solid black;border-right:2px solid black;">WV022</td>
                </tr>
                <tr>
                  <td colspan="10" style="background-color:#e1ddcd; border-color:black; border-style:solid; border-width:2px; text-align:center">
                    <strong>C Money Payments Subject to Withholding of Business Tax by Government Payor Only</strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Carriers and Keepers of Garages</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB030</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Franchise Tax on Gas and Utilities</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB040</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Franchise Tax on radio &amp; radio &amp; TV broadcasting companies whose annual gross receipts do not exceed P10M &amp; who are not VAT-registered </span>
                    <span style="margin-left:10px">taxpayers</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB050</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Life Insurance Premiums</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB070</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Overseas Dispatch, Message or Conversation from the Philippines</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB090</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Banks and Non-Bank Financial Intermediaries Performing Quasi Banking Functions</span>
                    <br />
                    <span style="margin-left:20px;">A. On interest, commissions and discounts from lending activities as well as income from financial leasing, on the basis of the remaining </span>
                    <span style="margin-left:20px">maturities of instrument from which such receipt are derived</span>
                    <br />
                    <span style="margin-left:40px;">- Maturity period is five years or less             5%</span>
                    <br />
                    <span style="margin-left:40px;">- Maturity period is more than five years          1%</span>
                    <br />
                    <span style="margin-left:20px;">B. On dividends and equity shares and net income of subsidiaries      0%</span>
                    <br />
                    <span style="margin-left:20px;">C. On royalties, rentals of property, real or personal, profits from exchange and all other items treated as gross income under the Code     7%</span>
                    <br />
                    <span style="margin-left:20px;">D. On net trading gains within the taxable year on foreign currency, debt securities, derivatives and other similar financial instruments     7%</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    <br />
                    <br />
                    WB301<br />
                    WB303<br />
                    WB102<br />
                    WB103<br />
                    WB104
                  </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Business tax on Agents of Foreign Insurance Companies - Owner of the Property</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB121</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on International Carriers</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB130</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Business Tax on Agents of Foreign Insurance Companies - Insurance Age</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB120</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Business Tax on Agents of Foreign Insurance Companies - Owner of the Property</span>
                  </td>
                  <td style="text-align:center;border-right:2px solid black;">WB121</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on International Carriers</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB130</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Other Non-Banks Financial Intermediaries not Performing Quasi-Banking Functions</span>
                    <br />
                    <span style="margin-left:20px;">A. On interest, commissions and discounts from lending activities as well as income from financial leasing, on the basis of the remaining </span>
                    <span style="margin-left:10px">maturities of instrument from which such receipt are derived</span>
                    <br />
                    <span style="margin-left:40px;">- Maturity period is five years or less          5%</span>
                    <br />
                    <span style="margin-left:40px;">- Maturity period is more than five years        1%</span>
                    <br />
                    <span style="margin-left:20px;">B. On all other items treated as gross income under the code     5%</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    <br />
                    <br />
                    WB108<br />
                    WB109<br />
                    WB110
                  </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Cockpits</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB140</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on amusement places, such as cabarets, night and day clubs, videoke bars, karaoke bars, karaoke television, karaoke boxes, music </span>
                    <span style="margin-left:10px">lounges and other similar establishments</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB150</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Boxing exhibitions</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB160</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on Professional basketball games</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB170</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on jai-alai and race tracks</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB180</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on sale, barter or exchange of stocks listed and traded through Local Stock exchange</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">WB200</td>
                </tr>
                <tr>
                  <td colspan="9" style="border:1px solid black;border-left:2px solid black;">
                    <span style="margin-left:10px;">Tax on shares of stock sold or exchanged through initial and secondary public offering</span>
                    <br />
                    <span style="margin-left:20px;">- Not over 25%              4%</span>
                    <br />
                    <span style="margin-left:20px;">- Over 25% but not exceeding 33 1/3%     2%</span>
                    <br />
                    <span style="margin-left:20px;">- Over 33 1/3%              1%</span>
                  </td>
                  <td style="text-align:center;border:1px solid black;border-right:2px solid black;">
                    <br />
                    WB201<br />
                    WB202<br />
                    WB203
                  </td>
                </tr>
              </thead>
            </table>
          </div>

        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>',N'',N'None',1,0,Null,0,0,0,Null,N'',0,N'',Null,0,Null,Null,0,N'None',N'None',N'None',N'None',N'None',N'None',N'',Null,Null,0,Null,Null,Null,Null,Null,Null,Null,N'{"loginputafterxslt":false}',Null,0,0,N'',Null,Null,0,0)

GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MPI_FETCH_TIN_NO_BIR]') AND type IN (N'P', N'PC'))
DROP PROCEDURE [dbo].[MPI_FETCH_TIN_NO_BIR]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[MPI_FETCH_TIN_NO_BIR](@FA_ID INT)              
AS              
/*                      
 CREATED BY :- PRIYANKA TOUTI  | CREATED DATE :- 13-06-24    
 EXEC MPI_FETCH_TIN_NO_BIR 103508             
*/              
BEGIN               
DECLARE @TIN NVARCHAR(100),@ADDRESS NVARCHAR(MAX),@NAME NVARCHAR(MAX),@count int;     
DECLARE @DATE DATE,@Month int,@year int,@Day int,@CIF nvarchar(256);         
  
 select @DATE=Fia_ex5_109,  
 @CIF = Fia_ex5_9  
 from Fia_ex5   
 where ownerid = 985   
 and Fia_ex5_id=@fa_id;  
  
 SELECT @NAME=A.NAME,    
  @TIN = A3.ACC_EX3_15,  
  @ADDRESS=A3.Acc_ex3_16   
 FROM ACCOUNTS A  
 INNER JOIN ACC_EX3 A3 ON A.OWNERID = A3.OWNERID AND A.ACCOUNTID = A3.ACC_EX3_ID  
 WHERE A.OWNERID = 985 AND A.CODE = @CIF;  
  
 select @Month=format(@DATE,'MM');  
 select @year=format(@DATE,'yyyy');  
  
 SELECT M.*, 
 (case when @DATE !='' then '01' else '' end) as Start_Day,  
 (case when @Month = 01 then 31  
 when @Month = 02 then 28  
 when @Month = 03 then 31  
 when @Month = 04 then 30  
 when @Month = 05 then 31  
 when @Month = 06 then 30  
 when @Month = 07 then 31  
 when @Month = 08 then 31  
 when @Month = 09 then 30  
 when @Month = 10 then 31  
 when @Month = 11 then 30  
 when @Month = 12 then 31 else '' end) as End_Day,  
 (case when @DATE !='' then concat('0',@Month) else '' end)as Month ,  
 @year as Year,  
 SUBSTRING(A3.ACC_EX3_15, 1, 3) AS TIN_NO1,  
 case when A3.ACC_EX3_15 like '%-%' then (SUBSTRING(A3.ACC_EX3_15, 5, 3))  
 when A3.ACC_EX3_15 not like '%-%' then (SUBSTRING(A3.ACC_EX3_15, 4, 3))  
 end AS TIN_NO2,  
 case when A3.ACC_EX3_15 like '%-%' then (SUBSTRING(A3.ACC_EX3_15, 9, 3))  
 when A3.ACC_EX3_15 not like '%-%' then (SUBSTRING(A3.ACC_EX3_15, 7, 3))  
 end AS TIN_NO3,  
 A3.Acc_ex3_16 as ADDRESS,  
 (case when @Month = 01 then M.GROSS_PHP  
 when @Month = 04 then M.GROSS_PHP  
 when @Month = 07 then M.GROSS_PHP   
 when @Month = 10 then M.GROSS_PHP else 0.00 end) as first_Quarter,  
 (case when @Month = 02 then M.GROSS_PHP  
 when @Month = 05 then M.GROSS_PHP  
 when @Month = 08 then M.GROSS_PHP   
 when @Month = 11 then M.GROSS_PHP else 0.00 end) as second_Quarter,  
 (case when @Month = 03 then M.GROSS_PHP  
 when @Month = 06 then M.GROSS_PHP  
 when @Month = 09 then M.GROSS_PHP   
 when @Month = 12 then M.GROSS_PHP else 0.00 end) as third_Quarter,
 f.Subject 
 --from DBO.MPI_DISBURSEMENT_BREAKDOWN(@FA_ID)   where DS_TYPE in ('Dealer','Salesman')  
 FROM FinancialApplication f 
 inner join MPI_TUCKIN_INFO (NOLOCK) M on f.OwnerId = 985 and f.CustomObjectId = m.ITEMID      
 LEFT OUTER JOIN ACC_EX3 A3 ON A3.OWNERID = 985 AND A3.ACC_EX3_ID = M.RECORDID   
 where M.ITEMTYPEID = 100286 and  M.TYPE in ('Dealer','Salesman') and M.ITEMID = @FA_ID ;  
  
 --SELECT LEFT(@TIN, 3) AS TIN_NO1,SUBSTRING(@TIN, 5, 3) AS TIN_NO2,Right(@TIN, 3) AS TIN_NO3,@ADDRESS AS PAYEE_ADDRESS,@NAME AS PAYEE_NAME,@count AS COUNT;  
  
   
END 
GO


INSERT INTO [dbo].[MashupDataSourceField] (OwnerId,FieldId,DataSourceId,Name,Label,Type,IsSearchable,IsFilterable,IsDisplay,XPath,AddedBy,AddedOn,format,MaskStartPos,MaskTotalChar,MaskChar,ApplyMaskOnNewEdit,ContentNameField,ContentTypeField,IsCastRequired,OutParameterIndex,MaskFormatId,EDSResolverId,GroupID,GroupName,ParentGroupID,MaxLength,AdditionalSettings) VALUES(985,6370,331,N'Response',N'Response',N'HTML',0,0,0,N'',N'Priyanka Touti','2024-08-28 06:30:32',N'',-1,-1,N'*',0,N'',N'',Null,Null,-1,-1,0,N'',0,-1,N'{"MongoOutputFieldMode":3}')
Set identity_insert dbo.MashupParamMapping On 
INSERT INTO [dbo].[MashupParamMapping] (OwnerID,MappingID,DataSourceId,MappingXml,CreatedBy,CreatedOn) VALUES(985,5681,331,N'<mappings><mapping parametername=''FA_ID'' mappedcolumn=''InputParam1'' /></mappings>',1,'2024-08-28 06:30:32')
 Set identity_insert dbo.MashupParamMapping OFF
Set identity_insert dbo.MashupQueryParameter On 
INSERT INTO [dbo].[MashupQueryParameter] (OwnerId,DataSourceId,Name,Type,IsMandatory,AddedBy,AddedOn,Template,ParameterOrder,DisplayName,TemplateProperties,ParamProperties,IsCollection,IsEnum,IsHeaderProperty,ArrayTemplateID,ArrayTemplateName,ParentId) VALUES(985,331,N'FA_ID',N'Integer',0,N'Priyanka Touti','2024-08-28 06:30:32',N'',9546,N'',N'',N'',0,0,0,0,Null,0)
 Set identity_insert dbo.MashupQueryParameter OFF


Update DataSourceXslt SET LastModifiedBy = 1 Where OwnerID = 985 ;
Update MashupDataSource SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 985 ;
Update MashupParamMapping SET CreatedBy = 1 Where OwnerID = 985 ;

------------------------------------------

Delete FROM dbo.WebServiceDataPresenters WHERE OwnerID = 985 AND FormId IN (2059)
Delete FROM dbo.WSPrePopulateMapping WHERE OwnerID = 985 AND ItemID IN (2059)

INSERT INTO [dbo].[WebServiceDataPresenters] (OwnerId,FormId,FormName,DataSourceId,FormXml,CreatedBy,CreatedOn,LastModifiedby,LastModifiedOn,IsActive,LogExpirationDay,SaveLog,LogSubject,LogDetail,SourceType,LinkName,LinkPosition,LinkType,LinkObject,LinkObjectLayout,TranslatorAction,ExternalSourceMapping,LayoutName,DisplayMode,DRPSelectedTemplate,MappingJson,AdditionalSetting,DesignXml,FieldXml) VALUES(985,2059,N'BIR',331,N'<WebserviceDataPresenter><sections fetchbuttontext="" refetchbuttontext=""><section><text><lang lid="en" text="Section" /></text><rows><row><cols><col fieldid="6370" sourceid="331" sourcetype="" operation="" required="3" hidevalue="" fieldusefor="" srcviewid="" score="" regexp="" regmsg="" additionalVal="" aparameter="" aparameterfieldid="" parameter="" parameterfieldid="" fieldtype="HTML" finputtype="" groupColor="" ctrct="" editable="" inputnoneditable="" showlabel="true" tooltiptitle="" maskingid="" maskingtext=""><text><lang lid="en" text="Response" /></text></col><col fieldid="blankcell" /></cols></row><row><cols><col fieldid="blankcell" /><col fieldid="blankcell" /></cols></row></rows></section></sections><result><source sourceid="331" type="2" sourceviewid="0"><queryinfo rollup="False" viewid="0" alertvisibilitytype="0" summaryoff="False" RowSummaryON="True" RowSummarizedText="TOTAL"  ColumnSummaryON="True" ColumnSummarizedText="TOTAL" showdetails="True" showhide="True"  orderbyfield="" isascending ="1"  sourcetype="2"  sourceid="331"   parentid="0" reportviewmode="1"  aggregationindb="False" applyuserheirarchy="False" disablegrouping="False" expandedgrouping="False"><selectfields /><expressions><andorexpression value="" /></expressions><fieldorders /><action /><googlemapsettings labelfield="" addressfield="" showreportdata="False" /><Links></Links></queryinfo></source><action externalsourceid="-1" type="1" name="" keyfieldInput="-1" keyfieldOutput="-1" actionInput="-1" defaultValue="" actionButtonText=""></action></result></WebserviceDataPresenter>',4603,'2024-06-26 09:01:50',4603,'2024-06-26 09:04:36',1,0,0,N'',N'',2,N'',1,1,0,N'',-1,N'',N'',0,Null,N'',N'{"EnforceToFullRow":false,"ShowExportLink":false}',N'<?xml version="1.0" encoding="utf-8"?><Designer ItemType="ProcessDesigner" Name="Diagram 1" xmlns:p="http://www.businessnext.com/2009/designer/property.xsd" xmlns="http://www.businessnext.com/2009/designer.xsd"><Views><View Id="A_2f931966-aad4-474e-85fa-265e33e6e28a" ItemType="View"><Layers><Layer Name="Layer"><Nodes><Node Id="A_09b721c9-5420-44ef-8760-67dd0ba19ef1" ItemType="processDesignerRoot" Name="processDesignerRoot"><Nodes><Node Id="A_d122f17e-bddf-426d-86fd-34406b06a553" ItemType="layoutitems" Name="LayoutItems"><Nodes><Node Id="A_8b24b1cc-7d5c-4353-a5f1-d0d94feebfb6" ItemType="VStackPanel" Name="Stack Panel"><Nodes><Node Id="A_d4a22e96-0ac6-451b-965e-7b0ae1ccbce1" ItemType="Container" Name="Container"><Nodes><Node Id="A_f2df65c3-4525-40df-af8f-c4c95564a024" ItemType="TabControl" Name="TabControl"><Nodes><Node Id="A_dede2ce6-fb45-7eb5-b0b0-9a6b958229e2" ItemType="SlideLeftTab" Name="SlideLeftTab"><Nodes></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="10px"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:String Name="Index" Type="String">0</p:String><p:Int Name="TabValue" Type="Int">1</p:Int></Properties></Node><Node Id="A_0bace719-1f98-4654-9a2b-cbbdcdd9597e" ItemType="Tab" Name="Tab"><Nodes><Node Id="A_33791d98-95c1-4a98-9ddf-01faeb8b136f" ItemType="Sections" Name="Sections"><Nodes><Node Id="A_8548f9f2-7a38-ff65-2410-89ed37fcfd5b" ItemType="Section" Name="Section"><Nodes><Node Id="A_3f45c3bd-f423-0057-981b-483dee785c3e" ItemType="BlankRow" Name="BlankRow"><Nodes></Nodes><Properties><p:Color Name="Background" Type="Color">#EFEFEF</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="10px" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:String Name="Columns" Type="String">4</p:String><p:Behavior Name="Draggable" IsDraggable="False" Type="Behavior"></p:Behavior><p:Behavior Name="Selection" IsSelection="False" Type="Behavior"></p:Behavior><p:Behavior Name="Panel" PanelType="HStack" Type="Behavior"></p:Behavior><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean></Properties></Node><Node Id="A_82c87698-73e5-5668-5926-909f46338958" ItemType="Row" Name="Row"><Nodes><Node Id="A_0950cf2e-b166-4bd4-f314-b62d95a8c013" ItemType="ColumnContainer" Name="Column Container"><Nodes><Node Id="A_55f51d51-5b6f-b18f-9f0c-9b625964c281" ItemType="Column" Name="Column"><Nodes><Node Id="A_b29de991-a198-c03c-2320-076247107e27" ItemType="HTML"><Nodes></Nodes><Properties><p:Color Name="Background" Type="Color">#EFEFEF</p:Color><p:Color Name="StrokeColor" Type="Color">#D3D3D3</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="100%" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:String Name="Name" Type="String">Response</p:String><p:Xml Name="Expression" Type="Xml"><![CDATA[<expression type=''Layout Designer''>                  <name>Response</name>                   <fieldname>Response</fieldname>                  <fieldid>6370</fieldid>                  <type>-1</type>                  <valign>top</valign>                  <required>3</required>                  <readonly>0</readonly>                  <readonlytype>0</readonlytype>                  <hide>false</hide>                  <hidecontroltype>undefined</hidecontroltype>                  <trackhist>false</trackhist>                  <resetonsave>0</resetonsave>                  <colspan></colspan>                  <rowspan></rowspan>                  <highlightcolor>#000000</highlightcolor>                  <tooltiptitle></tooltiptitle>                  <relatedtype>0</relatedtype>                  <listingtype>168</listingtype>                  <listingid>-1</listingid>                  <regx></regx>                  <regxmsg></regxmsg>                  <showtodropdown>false</showtodropdown>                  <sourceid>331</sourceid>                  <controltype>2</controltype>                  <rendering>5</rendering>                  <externalsourceparameters></externalsourceparameters>                  <disablecopypaste>0</disablecopypaste>                  <isautocomplete>false</isautocomplete>                  <showlabel>true</showlabel>                  <changetype>0</changetype>                  <iscustomcolumn>false</iscustomcolumn>                  <mappingxml>null</mappingxml>                  <defexp></defexp>                  <defvalue></defvalue>                  <maxlength>-1</maxlength>                  <fieldhelpid></fieldhelpid>                  <deftype>0</deftype>                  <renderingnamemode>0</renderingnamemode>                  <requirednamemode>0</requirednamemode>                  <salutationreq>0</salutationreq>                  <suffixreq>undefined</suffixreq>                  <foptvalues></foptvalues>                  <foptids></foptids>                  <dependents></dependents>                  <dependentsxml>undefined</dependentsxml>                  <optionsvisibility>undefined</optionsvisibility>                  <iseditable>0</iseditable>                  <hideformat>0</hideformat>                 <hidechar></hidechar>                 <searchable>false</searchable>                 <searchop>-1</searchop>                  <isNewAlwd>false</isNewAlwd>                  <isSummaryAllowed>undefined</isSummaryAllowed>                 <isautosize>false</isautosize>                 <dateformate>0</dateformate>                 <relatedObjnames></relatedObjnames>                 <relatedToIds></relatedToIds>                 <maxattachment>-1</maxattachment>                 <folderid>-1</folderid>                 <multiobjectparameters>undefined</multiobjectparameters>                 <crmnextcontrolparameters>undefined</crmnextcontrolparameters>                 <evaluatorid>-1</evaluatorid>                 <sysdateformat>undefined</sysdateformat>                 <sysminyear>undefined</sysminyear>                 <sysmaxyear>undefined</sysmaxyear>                 <isuppercase>undefined</isuppercase>                 <showlabelposition>undefined</showlabelposition>                 <maskingtext>undefined</maskingtext>                 <maskingid>undefined</maskingid>                 <istileview>false</istileview>                 <clearsetting></clearsetting>                 <copyto></copyto>                 <groupfields></groupfields>                 <cangooffline>false</cangooffline>                 <controlcategory>20</controlcategory>                 <isclicktocall>false</isclicktocall>                 <isclicktosms>false</isclicktosms>                 <icons></icons>                 <isrefreshicon>false</isrefreshicon>                 <buttonattribute>null</buttonattribute>                 <customlinkid>undefined</customlinkid>                 <hdncustomlinkid>undefined</hdncustomlinkid>                 <hidesystemlink>undefined</hidesystemlink>                 <rdncustomlink>undefined</rdncustomlink>                 <rdncustombutton>undefined</rdncustombutton>                 <custombuttonid>undefined</custombuttonid>                 <hdncustombuttonid>undefined</hdncustombuttonid>                 <displaytype>undefined</displaytype>                 <displaymode>undefined</displaymode>                 <isupfrontedit>false</isupfrontedit>                 <isshowupfrontlabel>false</isshowupfrontlabel>                 <parentpickernode>undefined</parentpickernode>                 <hierarchyheight>undefined</hierarchyheight>                 <hierarchywidth>undefined</hierarchywidth>                 <disablegrouping>false</disablegrouping>                 <isHideReference>undefined</isHideReference>                 <isexcludeoption>undefined</isexcludeoption>                 <fieldtype>HTML</fieldtype>                 </expression>]]></p:Xml></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">#F0F0F0</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="30px" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="10" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="10" Top="0" Bottom="0" Right="0"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:String Name="RowSpan" Type="String">1</p:String><p:String Name="ColSpan" Type="String">1</p:String><p:String Name="Visibility" Type="String">visible</p:String><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Xml Name="Expression" Type="Xml"></p:Xml></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="50%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node><Node Id="A_b76e099e-e88d-ebfb-858e-a7f4e904a623" ItemType="ColumnContainer" Name="Column Container"><Nodes><Node Id="A_c2291755-8b8e-a4f4-fd94-b8ae49d08e72" ItemType="Column" Name="Column"><Nodes></Nodes><Properties><p:Color Name="Background" Type="Color">#F0F0F0</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="30px" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="10" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="10" Top="0" Bottom="0" Right="0"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:String Name="RowSpan" Type="String">1</p:String><p:String Name="ColSpan" Type="String">1</p:String><p:String Name="Visibility" Type="String">visible</p:String><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Xml Name="Expression" Type="Xml"></p:Xml></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="50%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="350" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">#EFEFEF</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="30" Top="10"></p:Position><p:Margin Name="Margin" Type="Margin" Left="30" Top="0" Bottom="0" Right="20"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:String Name="Columns" Type="String">4</p:String><p:String Name="BandType" Type="String">default</p:String><p:Behavior Name="Draggable" IsDraggable="False" Type="Behavior"></p:Behavior><p:Behavior Name="Selection" IsSelection="False" Type="Behavior"></p:Behavior><p:Behavior Name="Panel" PanelType="HStack" Type="Behavior"></p:Behavior><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Xml Name="Expression" Type="Xml"></p:Xml></Properties></Node><Node Id="A_7b4023d9-d21a-d5e6-0d3f-368ab8208af1" ItemType="BlankRow" Name="BlankRow"><Nodes></Nodes><Properties><p:String Name="Columns" Type="String">4</p:String><p:Behavior Name="Draggable" IsDraggable="False" Type="Behavior"></p:Behavior><p:Behavior Name="Selection" IsSelection="False" Type="Behavior"></p:Behavior><p:Size Name="Size" Type="Size" Unit="px" Height="10px" Width="100%"></p:Size><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="40"></p:Position><p:Color Name="Background" Type="Color">#EFEFEF</p:Color><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Behavior Name="Panel" PanelType="HStack" Type="Behavior"></p:Behavior></Properties></Node><Node Id="A_7eaab1d6-8f61-f1d9-dede-ef0172c857ed" ItemType="Row" Name="Row"><Nodes><Node Id="A_6d833457-daf2-c656-2580-cfd8cff34da9" ItemType="ColumnContainer" Name="Column Container"><Nodes><Node Id="A_3375e0db-4035-9831-1193-4305de4e6554" ItemType="Column" Name="Column"><Nodes></Nodes><Properties><p:String Name="RowSpan" Type="String">1</p:String><p:String Name="ColSpan" Type="String">1</p:String><p:Xml Name="Expression" Type="Xml"></p:Xml><p:Size Name="Size" Type="Size" Unit="px" Height="30px" Width="100%"></p:Size><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:Margin Name="Margin" Type="Margin" Left="10" Top="0" Bottom="0" Right="0"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="10" Top="0"></p:Position><p:Color Name="Background" Type="Color">#F0F0F0</p:Color><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:String Name="Visibility" Type="String">visible</p:String></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="50%"></p:Size><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node><Node Id="A_9d962ccf-ead3-924c-45f1-092905f84722" ItemType="ColumnContainer" Name="Column Container"><Nodes><Node Id="A_ae251e90-8b8f-0f46-173f-f98d49329d1c" ItemType="Column" Name="Column"><Nodes></Nodes><Properties><p:String Name="RowSpan" Type="String">1</p:String><p:String Name="ColSpan" Type="String">1</p:String><p:Xml Name="Expression" Type="Xml"></p:Xml><p:Size Name="Size" Type="Size" Unit="px" Height="30px" Width="100%"></p:Size><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:Margin Name="Margin" Type="Margin" Left="10" Top="0" Bottom="0" Right="0"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="10" Top="0"></p:Position><p:Color Name="Background" Type="Color">#F0F0F0</p:Color><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:String Name="Visibility" Type="String">visible</p:String></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="50%"></p:Size><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="350" Top="0"></p:Position><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node></Nodes><Properties><p:Xml Name="Expression" Type="Xml"></p:Xml><p:String Name="Columns" Type="String">4</p:String><p:Behavior Name="Draggable" IsDraggable="False" Type="Behavior"></p:Behavior><p:Behavior Name="Selection" IsSelection="False" Type="Behavior"></p:Behavior><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="100%"></p:Size><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:Margin Name="Margin" Type="Margin" Left="30" Top="0" Bottom="0" Right="20"></p:Margin><p:Position Name="Position" Type="Position" Unit="px" Left="30" Top="50"></p:Position><p:Color Name="Background" Type="Color">#EFEFEF</p:Color><p:Boolean Name="IsDropZone" Type="Boolean">true</p:Boolean><p:Behavior Name="Panel" PanelType="HStack" Type="Behavior"></p:Behavior><p:String Name="BandType" Type="String">default</p:String></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">#F0F0F0</p:Color><p:Color Name="TextColor" Type="Color">#00A499</p:Color><p:Color Name="StrokeColor" Type="Color">#C8C8C8</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="130px" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Alignment Name="Alignment" Type="Alignment"></p:Alignment><p:TextAlignment Type="TextAlignment">Start</p:TextAlignment><p:Thickness Type="Thickness">1</p:Thickness><p:String Name="Rows" Type="String">1</p:String><p:String Name="Name" Type="String">Section</p:String><p:String Name="DefaultBehavior" Type="String">expand</p:String><p:String Name="SectionIcon" Type="String"></p:String><p:String Name="InstructionName" Type="String"></p:String><p:String Name="InstructionId" Type="String"></p:String><p:String Name="NewObject" Type="String"></p:String><p:String Name="LayoutName" Type="String"></p:String><p:String Name="LayoutId" Type="String"></p:String><p:String Name="UniqueId" Type="String"></p:String><p:String Name="ImageId" Type="String"></p:String><p:String Name="ImageName" Type="String"></p:String><p:String Name="HdnCustomLink" Type="String"></p:String><p:String Name="CustomLink" Type="String"></p:String><p:String Name="SectionStyle" Type="String"></p:String><p:String Name="SetOutlookIcon" Type="String"></p:String><p:Behavior Name="Draggable" IsDraggable="True" Type="Behavior"></p:Behavior><p:Behavior Name="Selection" IsSelection="False" Type="Behavior"></p:Behavior><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior><p:Boolean Name="Collapsible" Type="Boolean">false</p:Boolean><p:Boolean Name="IsConvertToCard" Type="Boolean">false</p:Boolean><p:Boolean Name="HideSectionName" Type="Boolean">false</p:Boolean><p:Boolean Name="ContainsCustFields" Type="Boolean">false</p:Boolean><p:Boolean Name="HideSection" Type="Boolean">false</p:Boolean></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="40"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">#F5F5F5</p:Color><p:Color Name="BorderBrush" Type="Color">#000000</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:String Name="Index" Type="String">2</p:String><p:String Name="Name" Type="String">Details</p:String><p:String Name="Header" Type="String">Tab    </p:String><p:String Name="ShortcutKey" Type="String"></p:String><p:String Name="TabIcon" Type="String"></p:String><p:String Name="IsShowSectionVertically" Type="String">false</p:String><p:String Name="SectionRenderingStyle" Type="String"></p:String><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:Boolean Name="IsActive" Type="Boolean">true</p:Boolean><p:Int Name="TabValue" Type="Int"></p:Int><p:Xml Name="SectionGroupingExpression" Type="Xml"></p:Xml></Properties></Node><Node Id="A_f1ea09c9-9e32-e33c-a553-9379171ce3fa" ItemType="SlideRightTab" Name="SlideRightTab"><Nodes></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="30px"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:String Name="Index" Type="String">1</p:String><p:Int Name="TabValue" Type="Int">1</p:Int></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">#FFFFFF</p:Color><p:Color Name="TextColor" Type="Color">#000000</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="750px"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="40"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="40" Bottom="0" Right="0"></p:Margin><p:String Name="Index" Type="String">3</p:String><p:String Name="Name" Type="String">TabControl</p:String><p:String Name="Class" Type="String"></p:String><p:String Name="Data-bind" Type="String"></p:String><p:String Name="Title" Type="String"></p:String><p:Behavior Name="Draggable" Type="Behavior"></p:Behavior><p:Int Name="TabValue" Type="Int"></p:Int></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="100%" Width="100%"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:String Name="Text" Type="String">layout</p:String><p:Behavior Name="Panel" PanelType="HStack" Type="Behavior"></p:Behavior></Properties></Node></Nodes><Properties><p:Color Name="Background" Type="Color">Transparent</p:Color><p:Size Name="Size" Type="Size" Unit="px" Height="auto" Width="1500px"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="20" Top="20"></p:Position><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:Behavior Name="Panel" PanelType="VStack" Type="Behavior"></p:Behavior></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="10000px" Width="10000px"></p:Size><p:Margin Name="Margin" Type="Margin" Left="0" Top="0" Bottom="0" Right="0"></p:Margin><p:String Name="FieldStyle" Type="String"></p:String><p:String Name="Text" Type="String">layout</p:String><p:String Name="RenderingStyle" Type="String">0</p:String><p:Behavior Name="Panel" PanelType="CanvasPanel" Type="Behavior"></p:Behavior><p:Boolean Name="Is3ColumnCards" Type="Boolean">false</p:Boolean><p:Boolean Name="IsReadonlyFieldAslabel" Type="Boolean">false</p:Boolean><p:Boolean Name="HideSingleTab" Type="Boolean">false</p:Boolean><p:Xml Name="MapperExpression" Type="Xml"></p:Xml></Properties></Node></Nodes><Properties><p:Size Name="Size" Type="Size" Unit="px" Height="10000px" Width="10000px"></p:Size><p:Position Name="Position" Type="Position" Unit="px" Left="0" Top="0"></p:Position></Properties></Node></Nodes></Layer></Layers></View></Views></Designer>',N'<WebserviceDataPresenter>  <sections fetchbuttontext="" refetchbuttontext="">    <section>      <text>        <lang lid="en" text="Section" />      </text>      <rows>        <row>          <cols>            <col fieldid="6370" sourceid="331" sourcetype="" operation="" required="3" hidevalue="" fieldusefor="" srcviewid="" score="" regexp="" regmsg="" additionalVal="" aparameter="" aparameterfieldid="" parameter="" parameterfieldid="" fieldtype="HTML" finputtype="" groupColor="" ctrct="" editable="" inputnoneditable="" showlabel="true" tooltiptitle="" maskingid="" maskingtext="">              <text>                <lang lid="en" text="Response" />              </text>            </col>            <col fieldid="blankcell" />          </cols>        </row>        <row>          <cols>            <col fieldid="blankcell" />            <col fieldid="blankcell" />          </cols>        </row>      </rows>    </section>  </sections></WebserviceDataPresenter>')

Update WebServiceDataPresenters SET CreatedBy = 1,LastModifiedby = 1 Where OwnerId = 985


----------------------------------------------

Delete FROM dbo.Rpt_Query WHERE OwnerID = 985 AND ReportID IN (4403)
Delete FROM dbo.ItemVisibility where OwnerID = 985 AND ItemTypeID = 41 And ItemID IN (4403)
Delete FROM dbo.RptScopeFilterVisiblity WHERE OwnerID = 985 AND ReportID IN (4403)
Delete FROM dbo.ReportFilterOptions WHERE OwnerID = 985 AND ReportID IN (4403)
Delete FROM dbo.Rpt_favorites WHERE Ownerid = 985 AND  ReportID IN (4403)
Delete FROM dbo.RunningReportFilter WHERE Ownerid = 985 AND  ReportID IN (4403)

INSERT INTO [dbo].[Rpt_Query] (OwnerId,ReportId,VisibleToType,VisibleToID,KeyId,CategoryId,Name,NameResID,Description,DescriptionResID,SQL,SourceExpression,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,IsHideReport,IsAutoRun,StartingTime,EndTime,IsExternal,ExternalUrl,IsShowAll,FilterCategoryID,AppendAuthDetails,IsFixedQuery,FixedFilterExpression,DisplayFields,ReportType,CustomFilterFields,ParameterFields,ViewDisplayOrder,RdlScript,IsFixedRdl,IsSystemFilters,DataScope,VisibilityOption,BusinessUnitID,RelatedToType,IsExternalSource,ActionLinkPosition,RenamedFilterExpression,IsFilterXMLExpression,IsFilterMandatory,QueryType,HierarchyFilterExp,IsPagingOn,UniqueID,RetainFilterOnDrill,IsHideDetails,TransposeXML,DatacenterId,IsMobile,ShowInMailingList,ShowInTemplate,UseInExportTask,AllowLogACall,IsDynamicScope,IsFilterRequired,AllowJoinFilter,AdditionalQueryFields,NearRealTimeDisplay,CheckboxesVisibility,FixedCriteria,LastModifiedByType,IsParameterized,UserHierarchyField,ForecastModelId,IsDncMasking,ExternalInputMapping,WebPresenterId,IgnoreSharing,ShowSummarizationFilter,OrderedResults,CollapseFilters,CASESENSITIVE,IsOData,ReportHelp,DesignXml,IsRenderAsForm,ISWITHOUTPARTICIPANT,CardJson,FilterPolicy,FilterCriteria,ExternalDataSourceId,CustomSearch,EditDefinition,IsParentChildRelationship,ChildKeyId,AdditionalSettings,ReportFieldMapping,SourceType,ExternalUserScope,ExportReportInfo,ListConfigJSON,AllowInLineEditing) VALUES(985,4403,0,0,100286,-1,N'BIR',N'                                                                                                                                                                                                                                                                ',N'',N'                                                                                                                                                                                                                                                                ',N'',N'',4603,'2024-06-26 09:56:37',4603,'2024-06-26 09:56:37',0,1,Null,Null,1,N'',1,-1,0,0,N'',N'',1,N'',N'',4403,Null,0,0,3,1,0,100286,0,1,N'',0,0,9,N'',1,'74704ce5-7448-4498-82d9-979defc036cc',0,0,Null,0,0,0,0,0,1,0,0,Null,Null,0,0,N'',0,0,Null,0,0,N'<parameters><parameter name="FA_ID" paramtype="Integer" value="CustomObjectId" displayvalue="Object ID" valuetype="0" trackchange="" contentnameparam="" contenttypeparam="" displaytype="" isprompt="" valattribute ="" /></parameters>',2059,0,1,1,Null,0,Null,N'',N'',0,0,Null,Null,Null,0,Null,Null,1,0,N'{"DataSourceID":331}',Null,0,Null,0,N'',0)
INSERT INTO [dbo].[Rpt_favorites] (OwnerID,VisibleToType,VisibleToID,ReportID,DisplayOrder,IsSystemReport) VALUES(985,30,4603,4403,10000,0)


Update ItemVisibility SET AddedBy = 1,LastModifiedBy = 1 Where OwnerID= 985
Update RPT_Query SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID= 985 
GO
