@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity Projection view of ( ZARGANO_R_ORDER )'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZARGANO_C_ORDER
  provider contract transactional_query 
as projection on ZARGANO_R_ORDER
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
    Changedat,
    /* Associations */
    _items : redirected to composition child ZARGANO_C_ORDER_ITEMS
}
