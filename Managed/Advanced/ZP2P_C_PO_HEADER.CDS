@EndUserText.label: 'Projection view of ZP2P_I_PO_HEADER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZP2P_C_PO_HEADER
  provider contract transactional_query
  as projection on ZP2P_I_PO_HEADER
{
  key PoNo,
      DocCat,
      Type,
      CompCode,
      Org,
      @ObjectModel.text.element: [ 'status_text' ]
      Status,
      status_text,
      Active,
      Vendor,
      Plant,
      CreateBy,
      CreatedDateTime,
      ChangedDateTime,
      LocalLastChangedBy,
      /* Associations */
      _status
}
