@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of PO Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZMAN_I_PO_HEADER
  as select from ztbl_po_header
{
  key po_num                as PoNum,
      doc_cat               as DocCat,
      type                  as Type,
      comp_code             as CompCode,
      org                   as Org,
      status                as Status,
      vendor                as Vendor,
      plant                 as Plant,
      create_by             as CreateBy,
      created_date_time     as CreatedDateTime,
      changed_date_time     as ChangedDateTime,
      local_last_changed_by as LocalLastChangedBy
}
