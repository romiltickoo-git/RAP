class lhc_po_header definition inheriting from cl_abap_behavior_handler.
  private section.

    methods get_instance_authorizations for instance authorization
      importing keys request requested_authorizations for po_header result result.
     methods setstatus for modify
     importing keys for action po_header~setstatus result result.
     methods copypo for modify
       importing keys for action po_header~copypo.
     methods createpo for modify
       importing keys for action po_header~createpo.
     methods validatepurgorg for validate on save
       importing keys for po_header~validatepurgorg.

endclass.

class lhc_po_header implementation.

  method get_instance_authorizations.
  endmethod.

  METHOD SetStatus.
* BOC  @Action : Change status
**********************************************************************
* First Read the Interface view in Local mode with keys and keep in the internal table
**********************************************************************
     read entities of zp2p_i_po_header in local mode
     entity PO_HEADER all fields with corresponding #( keys )
     result data(lt_po_header).

      if lt_po_header is not initial.
        Modify entities of zp2p_i_po_header in local mode
        entity po_header
        update fields ( status ) with value #(
                                               for ls_po in lt_po_header
                                               (
                                                 %tky    = ls_po-%tky
                                                 status  = cond #( when  ls_po-status = 'A'
                                                                   then 'I'
                                                                   else 'A'
                                                                 )
                                               )
                                              ).
* Pass the changed instance back to front end.
     result = value #( for lw_po_header in lt_po_header
                       (
                         %tky    = lw_po_header-%tky
                         %param  = lw_po_header
                       )
                      ).
      endif.
*EOC  @Action : Change status
  ENDMETHOD.

  METHOD CopyPO.
 " Read selected instances
    read entities of zp2p_i_po_header in local mode
     entity PO_HEADER all fields with corresponding #( keys )
     result data(lt_po_header).

 "Copy as new instances
    modify entities of zp2p_i_po_header in local mode
     entity po_header create fields
     (
      DocCat
      Type
      CompCode
      Org
      Status
      Active
      Vendor
      Plant
     ) with value #( for ls_po in lt_po_header
                      (  %cid = keys[ KEY entity %key = ls_po-%key ]-%cid
                         %data = corresponding #( ls_po except PoNo )
                      )
                   ) mapped data(lt_mapped).

   " Pass data back to front end
 mapped-po_header  = lt_mapped-po_header.


  ENDMETHOD.

  METHOD CreatePo.
   " create an instance of entity with Default values
   modify entities of zp2p_i_po_header in local mode
   entity po_header create  from
   value #(
            for ls_po in keys (
                                 %cid  = ls_po-%cid
                                 %data = value #(  DocCat = 'C' Active = abap_true  CompCode = '2100')
                                 %control = value #(  DocCat   = if_abap_behv=>mk-on
                                                      Active   = if_abap_behv=>mk-on
                                                      CompCode = if_abap_behv=>mk-on
                                                   )
                              )

           ) mapped  mapped failed failed reported reported.
  ENDMETHOD.

  METHOD ValidatePurgOrg.
  data : lv_purh_org type c length 4.
  " Read the instance
  read entities of zp2p_i_po_header in local mode
   entity po_header fields ( Org )
   with corresponding #( keys )
   result data(lt_org).

   loop at lt_org reference into data(ls_org).

   if ls_org->Org is not initial.
      lv_purh_org = ls_org->Org.
      data(lv_leng) = strlen( lv_purh_org ).
      if lv_leng <> 4.
      append value #(  %tky = ls_org->%tky ) to failed-po_header.
      append value #(

                           %tky          = ls_org->%tky
                           %element-Org  = if_abap_behv=>mk-on
                           %msg          =  new_message_with_text(  severity = if_abap_behv_message=>severity-error
                                                                    text     = 'Wrong Purchase Org'
                                                                  )

                    ) to reported-po_header.
      endif.
   endif.
   endloop.

  ENDMETHOD.

endclass.
