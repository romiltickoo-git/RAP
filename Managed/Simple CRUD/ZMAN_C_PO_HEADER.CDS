@EndUserText.label: 'Consumption View of PO Header table'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZMAN_C_PO_HEADER 
provider contract transactional_query
as projection on ZMAN_I_PO_HEADER
{
    key PoNum,
    DocCat,
    Type,
    CompCode,
    Org,
    Status,
    Vendor,
    Plant,
    CreateBy,
    CreatedDateTime,
    ChangedDateTime,
    LocalLastChangedBy
}
