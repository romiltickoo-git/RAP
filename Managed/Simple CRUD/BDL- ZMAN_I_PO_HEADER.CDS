managed; //implementation in class zbp_man_i_po_header unique;
strict ( 2 );

define behavior for ZMAN_I_PO_HEADER alias PO_HEADER
implementation in class zman_cl_bp_po_header unique
persistent table ztbl_po_header
lock master
authorization master ( instance )
//etag master <field_name>
{
  create;
  update;
  delete;
  // field ( readonly ,numbering : managed ) PoNum;
  field ( readonly ) PoNum;
  mapping for ztbl_po_header
    {
      PoNum              = po_num;
      DocCat             = doc_cat;
      Type               = type;
      CompCode           = comp_code;
      Org                = org;
      Status             = status;
      Vendor             = vendor;
      Plant              = plant;
      CreateBy           = create_by;
      CreatedDateTime    = created_date_time;
      ChangedDateTime    = changed_date_time;
      LocalLastChangedBy = local_last_changed_by;
    }
}
