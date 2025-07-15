@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child Class of Root entity view of Order'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZARGANO_R_ORDER_ITEMS 
as select from ZARGANO_I_ORDER_ITEMS
association to parent ZARGANO_R_ORDER as _header
    on $projection.Orderid = _header.Orderid
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
    Changedat ,
    _header      // Make association public
}
