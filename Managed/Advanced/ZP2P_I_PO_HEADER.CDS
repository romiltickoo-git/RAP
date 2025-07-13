@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of PO Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZP2P_I_PO_HEADER
  as select from zdb_po_header
  association [1..*] to ZI_STATUS_VH as _status on $projection.Status = _status.status_code
{
  key po_no                 as PoNo,
      doc_cat               as DocCat,
      type                  as Type,
      comp_code             as CompCode,
      org                   as Org,
      @ObjectModel.text.element: [ 'status_text' ]
      status                as Status,
      _status.status_text   as status_text,
      active                as Active,
      vendor                as Vendor,
      plant                 as Plant,
      create_by             as CreateBy,
      created_date_time     as CreatedDateTime,
      changed_date_time     as ChangedDateTime,
      local_last_changed_by as LocalLastChangedBy,

      _status
}
