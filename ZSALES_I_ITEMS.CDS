@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Sales Item Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity ZSALES_I_ITEMS as select from vbap
{
    key vbeln as SalesOrder_No         ,
 @UI.lineItem: [{ position: 10 }]
  @UI.identification: [{ position: 10 }]      
  @Search.defaultSearchElement: true
 @Search.fuzzinessThreshold: 0.8 
    key posnr as SalesOrder_Item       ,
  @UI.lineItem: [{ position: 20 }]
  @UI.identification: [{  position: 20 }]  
        matnr as Sales_Material_No     ,
  @UI.lineItem: [{ position: 30 }]
  @UI.identification: [{
     position: 30 
 }]        
        @Semantics.amount.currencyCode: 'Net_Price'
        netpr as Sales_NetValue        ,
  @UI.lineItem: [{ position: 40 }]
  @UI.identification: [{
     position: 40 
 }]        
        waerk as Net_Price
}
