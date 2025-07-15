@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity view of Order'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZARGANO_R_ORDER as select from ZARGANO_I_ORDER
composition[0..*] of ZARGANO_R_ORDER_ITEMS as _items
{
    key Orderid,
    Customerid,
    Orderdate,
    Curr,
    @Semantics.amount.currencyCode: 'Curr'
    Amount,
    Status,
    Comments,
    Createdby,
    Createdat,
    Lastchangedby,
    Changedat ,
   _items   // Make association public
}
