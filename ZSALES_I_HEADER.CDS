@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Sales Header Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
// ---> Display Singular and Plural Header description on the Main Object Page 
@UI.headerInfo: {
    typeName: 'Sales Order Information',
    typeNamePlural: 'Sales Orders Information' ,
// ---> Display Sales Order No on left top of Detailed View Page      
    title: {
    type: #STANDARD,
    value: 'SalesOrder_No'
},
// ---> Display Document Currency on on left top of Detailed View Page 
description: {
    type: #STANDARD,
    value:'Document_Currency'
}
}
// ---> Keep this as Global Searchable 
@Search.searchable: true
define view entity ZSALES_I_HEADER as select from vbak 
association [1..*] to ZSALES_I_ITEMS as _item on $projection.SalesOrder_No = _item.SalesOrder_No
{
---> Facet is used to display on the detailed page 
---> Below Annotation is used to give the Header Description for the Drill Down Page.  
@UI.facet: [
{  id       : 'ordertype_id'       , purpose         : #HEADER,
   position : 10                   , label           : 'Sales Order Type',
   type     : #DATAPOINT_REFERENCE , targetQualifier : 'tqordertype'   
 },
---> Facet is used to display on the detailed page 
---> Below Annotation is used to give the Header Description for the Drill Down Page.      
 { id       : 'netvalue'           , purpose         : #HEADER,
   position : 20                   , label           : 'Net Value',
   type     : #DATAPOINT_REFERENCE , targetQualifier : 'tqnetvalue'    
 },
---> Facet is used to display on the detailed page 
---> Below Annotation is used to give the Header Description for the Drill Down Page. 
{
   id       : 'Salesorderno'       , purpose         : #STANDARD,
   position :10                    , label           : 'Sales Header Info',
   type     :#IDENTIFICATION_REFERENCE 
},
-- *=============> Facet Item level Description for the Item level <=========
{  id       : 'Salesorderitems'    , purpose         : #STANDARD,    
   position : 20                   , label           : 'Sales Item Info',        
   type     :#LINEITEM_REFERENCE   , targetElement   : '_item'  
}
]
--> Below Annotation is used to give the Column no 
 @UI.lineItem: [{ position: 10 }]
--> Once the Fact annotation is applied then this annotation is used to 
--> give Header information on the fact page  
 @UI.identification: [{ position: 10, label: 'Sales Order Number' }]
--> This Annotation is used to apply the selection field on the header page. 
 @UI.selectionField: [{ position: 10 }]
 @Search.defaultSearchElement: true
 @Search.fuzzinessThreshold: 0.8
    key vbeln  as SalesOrder_No     ,
 @UI.lineItem: [{ position: 20 }]  
 @UI.identification: [{ position: 20, label: 'Sales Order Type' }] 
 @UI.selectionField: [{ position: 20 }]
 @UI.dataPoint: { qualifier: 'tqordertype', title    : 'Sales Order Type' }
        auart  as Sales_OrderType   ,
 @UI.lineItem: [{ position: 30 }]
 @UI.identification: [{ position: 30, label: 'Sales Order Creation Date'}]
        erdat  as Creation_Date     ,
 @UI.identification: [{ position: 40, label: 'Sales NetValue' }]       
 @UI.lineItem: [{ position: 40 }]       
 @Semantics.amount.currencyCode : 'Document_Currency'
 @Search.defaultSearchElement: true       
 @Search.fuzzinessThreshold: 0.8
  @UI.dataPoint: { qualifier: 'tqnetvalue', title    : 'Net Value' }
        netwr  as NetValue          ,
 @UI.identification: [{ position: 50, label: 'Sales Document Currency' }]       
 @UI.lineItem: [{ position: 50 }]
        waerk  as Document_Currency ,
 @UI.identification: [{ position: 60,label: 'Sales Document Category'  }]       
 @UI.lineItem: [{ position: 60 }]
        vbtyp  as Document_Category ,
// Expose 
 @Search.defaultSearchElement: true
 _item        
}
