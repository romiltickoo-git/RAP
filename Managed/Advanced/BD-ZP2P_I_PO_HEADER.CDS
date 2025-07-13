managed;// implementation in class zbp_p2p_i_po_header unique;
strict ( 2 );

define behavior for ZP2P_I_PO_HEADER alias PO_HEADER
implementation in class ZCL_BP_POHEADER unique
persistent table zdb_po_header
lock master
authorization master ( instance )
//etag master <field_name>
{
  create;
  update;
  delete;
  field ( readonly, numbering : managed ) PoNo;
//BOC  @Action : Change status
  action SetStatus result [1] $self;
//EOC  @Action : Change status

  factory action CopyPO[1];
  static factory action CreatePo[1];
  validation ValidatePurgOrg on save { create ; update; }
  mapping for zdb_po_header
    {
      PoNo               = po_no;
      DocCat             = doc_cat;
      Type               = type;
      CompCode           = comp_code;
      Org                = org;
      Status             = status;
      Active             = active;
      Vendor             = vendor;
      Plant              = plant;
      CreateBy           = create_by;
      CreatedDateTime    = created_date_time;
      ChangedDateTime    = changed_date_time;
      LocalLastChangedBy = local_last_changed_by;
    }
}
