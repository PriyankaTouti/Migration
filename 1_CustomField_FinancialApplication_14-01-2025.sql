Delete FROM dbo.Level3Field WHERE OwnerID = 985 AND FieldId IN (6931)
Delete FROM dbo.MultiLevelField WHERE OwnerID = 985 AND FieldId IN (6931)
Delete FROM dbo.Level1Field WHERE OwnerID = 985 AND FieldId IN (6931)
Delete FROM dbo.LevelFieldDetails WHERE OwnerID = 985 AND FieldId IN (6931) AND KeyID = 100286
Delete FROM dbo.CustomfieldLookup WHERE OwnerID = 985 AND FieldId IN (6931) AND KeyID = 100286
Delete FROM dbo.ObjectSchema WHERE OwnerID = 985 AND FieldId IN (6931) AND KeyID = 100286

INSERT INTO [dbo].[ObjectSchema] (OwnerId,KeyId,FieldId,FieldName,Label,ViewLabel,Type,Length,IsFixed,IsDisplay,IsFilterable,DisplayOrder,Category,CategoryOrder,ViewId,LinkedFields,FieldTableName,QueryFields,IsLookup,FieldKey,IsMassUpdate,BShowInTemplate,IsMandatory,TableName,CastRequired,IsSearchable,ReturnType,ComputedExpression,ShowInComputedFields,TemplateFieldName,IsScale,IsSumAllowed,LinkFieldId,IsComparable,IsAverage,DurationFormat,FieldOption,IsTimeIn24hrs,RelationshipId,LayoutFieldId,LayoutType,GroupId,UseInSearch,BusinessUnitId,UseForMapping,RegxRequired,ShowInTemplateReport,HasIndex,IsFullTextSearch,ValidationType,FieldKeyId,MobileLayoutType,AdditionalData,ShowInAgeingSLA,ColumnName,ItemOrderField,IsImportKeyfield,TextFieldName,IsUidField,ApiKeyField,MapInCallScript,UseForValidation,ErrorMessage,UseForLinkField,LevelLayoutId,MaskStartPos,MaskTotalchar,AllowInlineEditing,MinLength,ImportType,ImportFieldKey,ImportLinkField,ImportMandatory,SetIfNotSpecified,GroupType,ImportPickerNotAllow,IsProductRelatedRecord,IgnoreValidation,IsModelFilterable,DecPrecision,DefaultValue,Sorted,CreatedBy,CreatedOn,LastModifiedBy,LastModifiedOn,Description,RoleID,TeamID,IsNonEditable,FiredOption,CategoryType,PopulateOnDemand,IsInActive,XSLT,DisplayType,HeaderXSLT,FooterXSLT,HeaderHeight,FooterHeight,MinValueReferenceField,MaxValueReferenceField,LastModifiedByType,ValueField,InitialValue,UniqueID,IsDNC,DNCField,IsDetailField,MinimumValue,MaximumValue,PropertyName,AdvanceFieldResolverSql,DefaultSelectionMode,CompositeComponent,DateFormatType,InputParameters,IsOrderbyDisplayName,ProfileImageStyle,UploadImageLink,MobileRefField,MinValue,MaxValue,TargetField,CogentMode,IsProfileField,CountDownTimerMode,IsScribbleTextInput,UseForGrouping,DMSLayoutId,ShowInWebFormFields,IsGeoCodingEnabled,DefinitionId,ParentRefKey,EncryptionKey,EncryptionType,FieldRepository,FieldValidationJson,isMultiUpload,AdditionalSetting,ExcludeDatanext) VALUES(985,100286,6931,N'Fia_ex5_81',N'LAN and PN',N'LAN and PN',2,250,0,1,1,6931,N'CAT_FINANCIALAPPLICATION',0,Null,N'',N'',N'',0,0,1,1,0,N'Fia_ex5',0,1,0,N'',1,N'#LAN and PN#',0,0,N'',0,0,0,0,0,-1,N'cust_6931',0,6580,0,0,1,0,0,1,0,-1,0,0,N'',0,N'Fia_ex5_81',Null,0,Null,0,N'',1,1,N'',0,Null,Null,Null,0,0,1,0,Null,0,0,1,0,0,0,1,0,N'',0,1,'2024-01-27 19:35:53',1,'2024-01-27 19:35:53',N'',-1,-1,0,0,1,0,0,Null,0,Null,Null,0,0,Null,Null,0,Null,-1,'1959a809-13d0-4024-8091-cbedf6303f66',Null,Null,Null,Null,Null,Null,Null,0,Null,0,Null,0,0,0,Null,0.000000,0.000000,Null,Null,Null,0,0,0,0,1,0,Null,Null,Null,0,Null,N'',Null,N'{"FormatId":-1,"UIExpression":"","Width":0}',0)


Update IDlist Set LastId = t.MaxId from  (select OwnerID, max ( FieldId ) as MaxId from dbo.ObjectSchema Group by OwnerID) as t Where IdList.ItemId = 40 and t.OwnerID = IdList.OwnerId 

Declare @MaxID INT  Declare @ID1 INT , @ID2 INT, @ID3 INT , @ID4 INT , @ID5 INT 

Select @ID1= Max(Level1Id) from Level1Field where OwnerID = 985 AND FieldId IN (SELECT FieldId FROM dbo.ObjectSchema WHERE OwnerID = 985 AND KeyID = 100286) 

Select @ID2=Max(Level3Id) from Level3Field where OwnerID = 985 AND FieldId IN (SELECT FieldId FROM dbo.ObjectSchema WHERE OwnerID = 985 AND KeyID = 100286)  

Select @ID3 =Max(Level2Id) from Level3Field where OwnerID = 985 AND FieldId IN (SELECT FieldId FROM dbo.ObjectSchema WHERE OwnerID = 985 AND KeyID = 100286)  

Select @ID4 =Max(Level1Id) from MultiLevelField where OwnerID = 985 AND FieldId IN (SELECT FieldId FROM dbo.ObjectSchema WHERE OwnerID = 985 AND KeyID = 100286)  

Select @ID5= Max(Level2Id) from MultiLevelField where OwnerID = 985 AND FieldId IN (SELECT FieldId FROM dbo.ObjectSchema WHERE OwnerID = 985 AND KeyID = 100286)  

IF (@ID1>@ID2 AND (@ID2 > @ID3 AND @ID3>@ID4 AND @ID4>@ID5))  
SET @MaxID=@ID1  
Else IF (@ID2 >@ID3 AND (@ID3>@ID4 AND @ID4>@ID5))  
SET @MaxID= @ID2  
Else IF (@ID3>@ID4 AND @ID4>@ID5)  
SET @MaxID= @ID3  
Else IF(@ID4>@ID5)  
SET @MaxID= @ID4  
Else  SET @MaxID=@ID5    
IF Exists(Select Top 1 1 from LevelIDList where OwnerID = 985 AND KeyID = 100286)  
BEGIN  
Update LevelIDList SET LastId=@MaxID where OwnerID = 985 AND KeyID = 100286  
END
Else  
Insert into LevelIDList Values(985,100286,@MaxID)  
GO

Update ObjectSchema SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 985 ;