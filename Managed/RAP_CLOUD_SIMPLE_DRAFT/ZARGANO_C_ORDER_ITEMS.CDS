@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view entity of ( ZARGANO_R_ORDER_ITEMS )'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZARGANO_C_ORDER_ITEMS 
as projection on ZARGANO_R_ORDER_ITEMS
{
    key Orderitemid,
    Orderid,
    Productname,
    Unitfield,
    @Semantics.quantity.unitOfMeasure: 'Unitfield'
    Quantity,
    Cukyfield,
    @Semantics.amount.currencyCode: 'Cukyfield'
    Unitprice,
    Createdby,
    Createdat,
    Lastchangedby,
    Changedat,
    /* Associations */
    _header : redirected to parent ZARGANO_C_ORDER
    
}
