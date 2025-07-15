@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface ( view entity)  of Order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZARGANO_I_ORDER
  as select from zord_order
{
  key orderid       as Orderid,
      customerid    as Customerid,
      orderdate     as Orderdate,
      curr          as Curr,
      @Semantics.amount.currencyCode: 'Curr'
      amount        as Amount,
      status        as Status,
      comments      as Comments,
      createdby     as Createdby,
      createdat     as Createdat,
      lastchangedby as Lastchangedby,
      changedat     as Changedat
}
