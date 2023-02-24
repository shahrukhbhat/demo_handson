/* checksum : 4f225f29dbda64f1730066311e4db096 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZSEPMRA_PROD_MAN {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency'
entity ZSEPMRA_PROD_MAN.I_Currency {
  @sap.text : 'Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Long Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimals'
  @sap.quickinfo : 'Number of decimal places'
  Decimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO code'
  @sap.quickinfo : 'ISO currency code'
  CurrencyISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative key'
  @sap.quickinfo : 'Alternative key for currencies'
  AlternativeCurrencyKey : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Primary'
  @sap.quickinfo : 'Primary SAP Currency Code for ISO Code'
  IsPrimaryCurrencyForISOCrcy : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Draft Administrative Data'
entity ZSEPMRA_PROD_MAN.I_DraftAdministrativeData {
  @sap.label : 'Draft (Technical ID)'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Entity ID'
  DraftEntityType : String(30);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreatedByUserDescription'
  @sap.label : 'Draft Created By'
  CreatedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'LastChangedByUserDescription'
  @sap.label : 'Draft Last Changed By'
  LastChangedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Access Type'
  DraftAccessType : String(1);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft In Process Since'
  ProcessingStartDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'InProcessByUserDescription'
  @sap.label : 'Draft In Process By'
  InProcessByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Is Kept By User'
  DraftIsKeptByUser : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Locked Since'
  EnqueueStartDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Created By Me'
  DraftIsCreatedByMe : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Last Changed By Me'
  DraftIsLastChangedByMe : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft In Process By Me'
  DraftIsProcessedByMe : Boolean;
  @sap.label : 'Draft Created By (Description)'
  CreatedByUserDescription : String(80);
  @sap.label : 'Draft Last Changed By (Description)'
  LastChangedByUserDescription : String(80);
  @sap.label : 'Draft In Process By (Description)'
  InProcessByUserDescription : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Language'
entity ZSEPMRA_PROD_MAN.I_Language {
  @sap.text : 'Language_Text'
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name of Language'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language_Text : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lang. (ISO 639)'
  @sap.quickinfo : '2-Character SAP Language Code'
  LanguageISOCode : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_CurrencyValueHelp {
  @sap.text : 'Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Long Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Contact Person'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ContactPerson {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FullName'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Contact Person ID'
  key ContactPerson : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner ID'
  @sap.quickinfo : 'EPM: Business Partner ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier : String(10);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'EPM: Full Name'
  FullName : String(81);
  @sap.label : 'Email'
  @sap.quickinfo : 'EPM: E-Mail Address'
  EmailAddress : String(255);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'EPM: Fax Number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mobile Phone Number'
  @sap.quickinfo : 'EPM: Mobile Phone Number'
  MobilePhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phone'
  @sap.quickinfo : 'EPM: Phone Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main Contact'
  @sap.quickinfo : 'Flag: Main contact person'
  IsMainContactPerson : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'SEPMRA_C_PD_POITMCUBE'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_PoItmCube {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product ID'
  @sap.quickinfo : 'EPM: Product ID'
  key Product : String(10) not null;
  @sap.attribute.for : 'OrganizationalUnit'
  @sap.label : 'Department Name'
  key OrgUnitName : String(20) not null;
  PoItmQuantity : Decimal(13, 3);
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'EPM: Quantity Unit'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Product : String(10) not null;
  @sap.label : 'Key'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is active'
  @sap.sortable : 'false'
  key IsActiveEntity : Boolean not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Activation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Copy_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Copy_new_supplier_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Create_review_post_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_ext_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Edit_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Favorites_add_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Favorites_remove_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Favorites_toggle_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Mycart_add_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Preparation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Validation_ac : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductForEdit_fc : Integer;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProductForEdit_fc'
  @sap.text : 'to_ProductTextInOriginalLang/Name'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  ProductForEdit : String(10);
  @sap.label : 'Sub-Category'
  @sap.quickinfo : 'Product Sub-Category'
  @sap.value.list : 'standard'
  ProductCategory : String(40);
  @sap.label : 'Category'
  @sap.quickinfo : 'Product Category'
  @sap.value.list : 'fixed-values'
  MainProductCategory : String(40);
  @sap.unit : 'Currency'
  @sap.label : 'Price per Unit'
  @sap.quickinfo : 'Fiori Reference Apps: Product Unit Price'
  Price : Decimal(16, 3);
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Currency'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Height'
  @sap.quickinfo : 'EPM: Height'
  Height : Decimal(13, 3);
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Width'
  @sap.quickinfo : 'EPM: Width'
  Width : Decimal(13, 3);
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Depth'
  @sap.quickinfo : 'EPM: Depth'
  Depth : Decimal(13, 3);
  @sap.text : 'to_DimensionUnit/UnitOfMeasure_Text'
  @sap.label : 'Dimension Unit'
  @sap.quickinfo : 'EPM: Dimension Unit'
  @sap.value.list : 'fixed-values'
  @sap.semantics : 'unit-of-measure'
  DimensionUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Image'
  @sap.quickinfo : 'Image of the product'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductPictureURL : String(255);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Supplier/CompanyName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier ID'
  @sap.value.list : 'fixed-values'
  Supplier : String(10);
  @sap.text : 'to_ProductBaseUnit/UnitOfMeasure_Text'
  @sap.label : 'Base Unit'
  @sap.quickinfo : 'Base Unit of Measurement for Product Quantities'
  @sap.value.list : 'fixed-values'
  @sap.semantics : 'unit-of-measure'
  ProductBaseUnit : String(3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Weight'
  @sap.quickinfo : 'EPM: Weight Measure'
  Weight : Decimal(13, 3);
  @sap.text : 'to_WeightUnit/UnitOfMeasure_Text'
  @sap.label : 'Weight Unit'
  @sap.value.list : 'fixed-values'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.label : 'Original Language'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OriginalLanguage : String(2);
  @sap.label : 'Name'
  @sap.quickinfo : 'Product Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Name : String(255);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  DraftEntityCreationDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  DraftEntityLastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has active'
  @sap.sortable : 'false'
  HasActiveEntity : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Draft'
  @sap.sortable : 'false'
  HasDraftEntity : Boolean;
  @cds.ambiguous : 'missing on condition?'
  DraftAdministrativeData : Association to ZSEPMRA_PROD_MAN.I_DraftAdministrativeData {  };
  @cds.ambiguous : 'missing on condition?'
  SiblingEntity : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {  };
  @cds.ambiguous : 'missing on condition?'
  to_CollaborativeReview : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Review {  };
  @cds.ambiguous : 'missing on condition?'
  to_CollaborativeReviewPost : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost {  };
  @cds.ambiguous : 'missing on condition?'
  to_Currency : Association to ZSEPMRA_PROD_MAN.I_Currency on to_Currency.Currency = Currency;
  @cds.ambiguous : 'missing on condition?'
  to_CurrencyVH : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_CurrencyValueHelp {  };
  @cds.ambiguous : 'missing on condition?'
  to_DimensionUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_DimensionUnit on to_DimensionUnit.UnitOfMeasure = DimensionUnit;
  @cds.ambiguous : 'missing on condition?'
  to_MainProductCategory : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_ProductMainCategory on to_MainProductCategory.MainProductCategory = MainProductCategory;
  @cds.ambiguous : 'missing on condition?'
  to_OriginalLanguage : Association to ZSEPMRA_PROD_MAN.I_Language {  };
  @cds.ambiguous : 'missing on condition?'
  to_PriceRange : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductPriceRange {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductBaseUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_QuantityUnit on to_ProductBaseUnit.UnitOfMeasure = ProductBaseUnit;
  @cds.ambiguous : 'missing on condition?'
  to_ProductCategory : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_ProductCategory on to_ProductCategory.ProductCategory = ProductCategory;
  @cds.ambiguous : 'missing on condition?'
  to_ProductCategoryVH : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_ProductCategory {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductImage : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductImage {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSalesData : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductSalesData {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductStock : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductStock {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductText : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductTextInOriginalLang : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductText {  };
  @cds.ambiguous : 'missing on condition?'
  to_StorageBin : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_StorageBinTP {  };
  @cds.ambiguous : 'missing on condition?'
  to_Supplier : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Supplier on to_Supplier.Supplier = Supplier;
  @cds.ambiguous : 'missing on condition?'
  to_WeightUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_WeightUnit on to_WeightUnit.UnitOfMeasure = WeightUnit;
} actions {
  action SEPMRA_C_PD_ProductActivation() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductCopy() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductCopy_new_supplier(
    Supplier : String(10)
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductCreate_review_post(
    Reviewratingvalue : Decimal(4, 2),
    Reviewposttext : LargeString,
    Reviewposttitle : String(60)
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductDelete_ext() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductEdit(
    PreserveChanges : Boolean
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductFavorites_add() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductFavorites_remove() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductFavorites_toggle() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductMycart_add() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  action SEPMRA_C_PD_ProductPreparation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product;
  function SEPMRA_C_PD_ProductValidation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.ValidationFunctionResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Product Image'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductImage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  key Product : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Image'
  @sap.quickinfo : 'EPM Fiori Ref Apps: Product Image ID'
  key ProductImage : String(70) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'File Name'
  @sap.quickinfo : 'EPM Reference Apps: File Name'
  FileName : String(255);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MIME Type'
  @sap.quickinfo : 'EPM Reference Apps: Mime Type'
  MIMEType : String(100);
  @sap.label : 'Document title'
  @sap.quickinfo : 'Short description of contents'
  Description : String(50);
  CreationDateTime : Decimal(15, 0);
  LastChangedDateTime : Decimal(15, 0);
  @Core.MediaType : 'application/octet-stream'
  blob : LargeBinary;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Price Range'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductPriceRange {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Product : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PriceClassification/PriceClassification_Text'
  @sap.label : 'Price Range'
  @sap.quickinfo : 'EPM Fiori Ref Apps: Price Classification'
  @sap.value.list : 'fixed-values'
  PriceClassification : String(10);
  @cds.ambiguous : 'missing on condition?'
  to_PriceClassification : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_PriceClassification on to_PriceClassification.PriceClassification = PriceClassification;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Sales Data'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductSalesData {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Sales Order Item ID'
  SalesOrderItem : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Delivery Date'
  DeliveryCalendarDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year'
  @sap.quickinfo : 'Calendar Year'
  DeliveryCalendarYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.text : 'DeliveryCalendarMonthT'
  @sap.label : 'Month'
  @sap.quickinfo : 'Calendar Month'
  DeliveryCalendarMonth : String(2);
  @sap.attribute.for : 'DeliveryCalendarMonth'
  @sap.label : 'Month Name'
  DeliveryCalendarMonthT : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductName'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  Product : String(10);
  @sap.attribute.for : 'Product'
  @sap.label : 'Product Name'
  ProductName : String(255);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'SoldToPartyCompanyName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SoldToParty : String(10);
  @sap.attribute.for : 'SoldToParty'
  @sap.label : 'Customer Company Name'
  SoldToPartyCompanyName : String(80);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'SoldToPartyCountryName'
  @sap.label : 'Customer Country'
  @sap.quickinfo : 'Customer Country Code'
  SoldToPartyCountry : String(3);
  @sap.attribute.for : 'SoldToPartyCountry'
  @sap.label : 'Customer Country Name'
  SoldToPartyCountryName : String(50);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Revenue'
  @sap.filterable : 'false'
  NetAmount : Decimal(16, 3);
  @sap.aggregation.role : 'dimension'
  @sap.text : 'CurrencyT'
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.attribute.for : 'Currency'
  @sap.label : 'Currency Name'
  CurrencyT : String(15);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Product Stock Availability'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductStock {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  key Product : String(10) not null;
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'EPM: Quantity'
  Quantity : Decimal(13, 3);
  @sap.text : 'to_QuantityUnit/UnitOfMeasure_Text'
  @sap.label : 'Quantity Unit'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
  @odata.Type : 'Edm.Byte'
  @sap.text : 'to_StockAvailability/StockAvailability_Text'
  @sap.label : 'Availability'
  @sap.quickinfo : 'Classification of max. available quantity in stock'
  @sap.value.list : 'fixed-values'
  StockAvailability : Integer;
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Minimum Stock'
  @sap.quickinfo : 'EPM: Minimum Stock'
  MinimumStockQuantity : Decimal(13, 3);
  @cds.ambiguous : 'missing on condition?'
  to_QuantityUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_QuantityUnit on to_QuantityUnit.UnitOfMeasure = QuantityUnit;
  @cds.ambiguous : 'missing on condition?'
  to_StockAvailability : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_StockAvailability on to_StockAvailability.StockAvailability = StockAvailability;
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.deletable.path : 'Delete_mc'
@sap.label : 'Product Text'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductText {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Name'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  key Product : String(10) not null;
  @sap.label : 'Language'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Language : String(2) not null;
  @sap.label : 'Key'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is active'
  @sap.sortable : 'false'
  key IsActiveEntity : Boolean not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Preparation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Validation_ac : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Description_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LanguageForEdit_fc : Integer;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_mc : Boolean;
  @sap.field.control : 'LanguageForEdit_fc'
  @sap.text : 'to_Language/Language_Text'
  @sap.label : 'Language'
  @sap.value.list : 'standard'
  LanguageForEdit : String(2);
  @sap.label : 'Name'
  @sap.quickinfo : 'Product Name'
  Name : String(255);
  @sap.field.control : 'Description_fc'
  @sap.label : 'Description'
  @sap.quickinfo : 'Product Description'
  Description : String(255);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  DraftEntityCreationDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  DraftEntityLastChangeDateTime : Timestamp;
  @sap.label : 'Key'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ParentDraftUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has active'
  @sap.sortable : 'false'
  HasActiveEntity : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Draft'
  @sap.sortable : 'false'
  HasDraftEntity : Boolean;
  @cds.ambiguous : 'missing on condition?'
  to_Product : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {  };
  @cds.ambiguous : 'missing on condition?'
  DraftAdministrativeData : Association to ZSEPMRA_PROD_MAN.I_DraftAdministrativeData {  };
  @cds.ambiguous : 'missing on condition?'
  SiblingEntity : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductText {  };
  @cds.ambiguous : 'missing on condition?'
  to_Language : Association to ZSEPMRA_PROD_MAN.I_Language on to_Language.Language = LanguageForEdit;
} actions {
  action SEPMRA_C_PD_ProductTextPreparation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ProductText;
  function SEPMRA_C_PD_ProductTextValidation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.ValidationFunctionResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Review'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Review {
  @sap.label : 'Node Key'
  @sap.quickinfo : 'EPM: Generic Node Key'
  key ProductReviewUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.value.list : 'standard'
  Product : String(10);
  @sap.label : 'Average Rating'
  @sap.quickinfo : 'EPM: Review Rating Average'
  AverageRatingValue : Decimal(4, 2);
  @sap.label : 'Number of Reviews'
  @sap.quickinfo : 'EPM: Number of Reviews'
  NumberOfReviewPosts : Integer;
  @cds.ambiguous : 'missing on condition?'
  to_Product : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {  };
  @cds.ambiguous : 'missing on condition?'
  to_ReviewPost : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost on to_ReviewPost.ProductReviewUUID = ProductReviewUUID;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Review Post'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost {
  @sap.label : 'Node Key'
  @sap.quickinfo : 'EPM: Generic Node Key'
  key ProductReviewPostUUID : UUID not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Mark_as_helpful_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Update_ac : Boolean;
  @sap.label : 'Node Key'
  @sap.quickinfo : 'EPM: Generic Node Key'
  ProductReviewUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.value.list : 'standard'
  Product : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Review Title'
  ReviewPostTitle : String(60);
  @sap.label : 'Review Text'
  ReviewPostText : LargeString;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Rating'
  @sap.quickinfo : 'Rating value'
  ReviewRatingValue : Integer;
  @sap.label : 'Helpful'
  @sap.quickinfo : 'Number of ''helpful'' ratings for a review'
  NumberOfAffirmativeAnswers : Integer;
  @sap.label : 'Number of Responses'
  @sap.quickinfo : 'EPM: Total Number of Review Responses'
  TotalNumberOfAnswers : Integer;
  @sap.display.format : 'Date'
  @sap.label : 'Date'
  @sap.quickinfo : 'Review Date'
  ReviewDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ContactPerson/FullName'
  @sap.label : 'Person'
  @sap.quickinfo : 'Contact Person'
  @sap.value.list : 'standard'
  ContactPerson : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reviewed by Me'
  @sap.quickinfo : 'Reviewed by the current user'
  IsReviewOfCurrentUser : Boolean;
  @cds.ambiguous : 'missing on condition?'
  to_ContactPerson : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ContactPerson on to_ContactPerson.ContactPerson = ContactPerson;
  @cds.ambiguous : 'missing on condition?'
  to_Product : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {  };
} actions {
  action SEPMRA_C_PD_ReviewPostDelete() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost;
  action SEPMRA_C_PD_ReviewPostMark_as_helpful() returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost;
  action SEPMRA_C_PD_ReviewPostUpdate(
    ReviewRatingValue : Decimal(4, 2),
    ReviewPostText : LargeString
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ReviewPost;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Storage Bin'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_StorageBinTP {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product ID'
  @sap.value.list : 'standard'
  key Product : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Bin Number'
  @sap.quickinfo : 'EPM: Stock Bin Number'
  key Bin : String(10) not null;
  @sap.label : 'Key'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is active'
  @sap.sortable : 'false'
  key IsActiveEntity : Boolean not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Preparation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Validation_ac : Boolean;
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'EPM: Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Quantity : Decimal(13, 3);
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Lot Size'
  @sap.quickinfo : 'EPM: Lot Size'
  LotSizeQuantity : Decimal(13, 3);
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Minimum Stock'
  @sap.quickinfo : 'EPM: Minimum Stock'
  MinimumStockQuantity : Decimal(13, 3);
  @sap.text : 'to_QuantityUnit/UnitOfMeasure_Text'
  @sap.label : 'Quantity Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
  @odata.Type : 'Edm.Byte'
  @sap.text : 'to_StockAvailability/StockAvailability_Text'
  @sap.label : 'Availability'
  @sap.quickinfo : 'Classification of max. available quantity in stock'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  StockAvailability : Integer;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OrganizationalUnit/OrganizationalUnitName'
  @sap.label : 'Org Unit ID'
  @sap.quickinfo : 'EPM: ID of org unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  OrganizationalUnit : String(10);
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Minimum Stock'
  @sap.quickinfo : 'EPM: Minimum Stock'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeviationRangeLow : Decimal(13, 3);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ToleranceRangeLow : Decimal(14, 3);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ToleranceRangeHigh : Decimal(17, 3);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeviationRangeHigh : Decimal(17, 3);
  @odata.Type : 'Edm.Byte'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MinimumStock : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaximumStock : Decimal(13, 3);
  @sap.unit : 'QuantityUnit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PoItmQuantity : Decimal(13, 3);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  DraftEntityCreationDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  DraftEntityLastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has active'
  @sap.sortable : 'false'
  HasActiveEntity : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Draft'
  @sap.sortable : 'false'
  HasDraftEntity : Boolean;
  @cds.ambiguous : 'missing on condition?'
  to_Product : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Product {  };
  @cds.ambiguous : 'missing on condition?'
  DraftAdministrativeData : Association to ZSEPMRA_PROD_MAN.I_DraftAdministrativeData {  };
  @cds.ambiguous : 'missing on condition?'
  SiblingEntity : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_StorageBinTP {  };
  @cds.ambiguous : 'missing on condition?'
  to_OrganizationalUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_OrganizationalUnit on to_OrganizationalUnit.OrganizationalUnit = OrganizationalUnit;
  @cds.ambiguous : 'missing on condition?'
  to_QuantityUnit : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_QuantityUnit on to_QuantityUnit.UnitOfMeasure = QuantityUnit;
  @cds.ambiguous : 'missing on condition?'
  to_StockAvailability : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_StockAvailability on to_StockAvailability.StockAvailability = StockAvailability;
} actions {
  action SEPMRA_C_PD_StorageBinTPPreparation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.SEPMRA_C_PD_StorageBinTP;
  function SEPMRA_C_PD_StorageBinTPValidation(
    SideEffectsQualifier : LargeString
  ) returns ZSEPMRA_PROD_MAN.ValidationFunctionResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity ZSEPMRA_PROD_MAN.SEPMRA_C_PD_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Name'
  CompanyName : String(80);
  @sap.label : 'Email'
  @sap.quickinfo : 'EPM: E-Mail Address'
  EmailAddress : String(255);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'EPM: Fax Number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phone'
  @sap.quickinfo : 'EPM: Phone Number'
  PhoneNumber : String(30);
  @sap.label : 'URI'
  @sap.quickinfo : 'EPM: Web Address'
  URL : LargeString;
  @cds.ambiguous : 'missing on condition?'
  to_Address : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_Address {  };
  @cds.ambiguous : 'missing on condition?'
  to_ContactPerson : Association to many ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ContactPerson {  };
  @cds.ambiguous : 'missing on condition?'
  to_PrimaryContactPerson : Association to ZSEPMRA_PROD_MAN.SEPMRA_C_PD_ContactPerson {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Address'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_Address {
  @sap.label : 'Address UUID'
  @sap.quickinfo : 'EPM: Internal Identifier of Address, universally unique'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key AddressUUID : UUID not null;
  @sap.label : 'City'
  @sap.quickinfo : 'EPM: City'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'EPM: Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  @sap.quickinfo : 'EPM: Street'
  StreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Building'
  @sap.quickinfo : 'EPM: Building'
  HouseNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'EPM: Country Code'
  Country : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'EPM: Start date of Validity'
  AddressValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid Until'
  @sap.quickinfo : 'EPM: End date of Validity'
  AddressValidityEndDate : Date;
  @sap.label : 'Latitude'
  @sap.quickinfo : 'EPM: Latitude'
  Latitude : Decimal(15, 12);
  @sap.label : 'Longitude'
  @sap.quickinfo : 'EPM: Longitude'
  Longitude : Decimal(15, 12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Full Address'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormattedAddress : String(255);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Full Address'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullAddress : String(255);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Type'
  @sap.quickinfo : 'EPM: Address Type'
  AddressType : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Dimension Unit'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_DimensionUnit {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Dimension Unit'
  @sap.quickinfo : 'EPM: Dimension Unit'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Technical'
  @sap.quickinfo : 'External Unit of Measurement in Technical Format (6-Char.)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO code'
  @sap.quickinfo : 'ISO code for unit of measurement'
  UnitOfMeasureISOCode : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Organizational Unit'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_OrganizationalUnit {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OrganizationalUnitName'
  @sap.label : 'Department'
  @sap.quickinfo : 'Department ID'
  key OrganizationalUnit : String(10) not null;
  @sap.attribute.for : 'OrganizationalUnit'
  @sap.label : 'Department Name'
  OrganizationalUnitName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Price Classification'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_PriceClassification {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PriceClassification_Text'
  @sap.label : 'Price Range'
  @sap.quickinfo : 'EPM Fiori Ref Apps: Price Classification'
  key PriceClassification : String(10) not null;
  @sap.label : 'Short text'
  @sap.quickinfo : 'Explanatory Short Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PriceClassification_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sub-Category'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_ProductCategory {
  @sap.label : 'Sub-Category'
  @sap.quickinfo : 'Product Sub-Category'
  key ProductCategory : String(40) not null;
  @sap.label : 'Category'
  @sap.quickinfo : 'Product Category'
  @sap.value.list : 'fixed-values'
  MainProductCategory : String(40);
  @cds.ambiguous : 'missing on condition?'
  to_MainCategory : Association to ZSEPMRA_PROD_MAN.SEPMRA_I_ProductMainCategory on to_MainCategory.MainProductCategory = MainProductCategory;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Category'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_ProductMainCategory {
  @sap.label : 'Category'
  @sap.quickinfo : 'Product Category'
  key MainProductCategory : String(40) not null;
  @cds.ambiguous : 'missing on condition?'
  to_Category : Association to many ZSEPMRA_PROD_MAN.SEPMRA_I_ProductCategory on to_Category.MainProductCategory = MainProductCategory;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Quantity Unit'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_QuantityUnit {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Quantity Unit'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Technical'
  @sap.quickinfo : 'External Unit of Measurement in Technical Format (6-Char.)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO code'
  @sap.quickinfo : 'ISO code for unit of measurement'
  UnitOfMeasureISOCode : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Product Stock Availability'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_StockAvailability {
  @odata.Type : 'Edm.Byte'
  @sap.text : 'StockAvailability_Text'
  @sap.label : 'Availability'
  @sap.quickinfo : 'Classification of max. available quantity in stock'
  key StockAvailability : Integer not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availability'
  @sap.quickinfo : 'Stock Availability Level Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StockAvailability_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Weight Unit'
entity ZSEPMRA_PROD_MAN.SEPMRA_I_WeightUnit {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Technical'
  @sap.quickinfo : 'External Unit of Measurement in Technical Format (6-Char.)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO code'
  @sap.quickinfo : 'ISO code for unit of measurement'
  UnitOfMeasureISOCode : String(3);
};

@cds.external : true
type ZSEPMRA_PROD_MAN.ValidationFunctionResult {
  @sap.label : 'Is valid'
  IsValid : Boolean;
};

