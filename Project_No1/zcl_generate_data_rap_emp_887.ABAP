class zcl_generate_data_rap_emp_887 definition
  public
  final
  create public .
  public section.
    interfaces if_oo_adt_classrun .
  protected section.
  private section.
endclass.



class zcl_generate_data_rap_emp_887 implementation.


  method if_oo_adt_classrun~main.

* ------> Data Declaration
   DATA itab type table of ztb_rap_emp_887.


*   fill internal travel table (itab)
    itab = VALUE #(
      ( employee_id = '0000000001' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000002' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000003' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000004' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000002')
      ( employee_id = '0000000005' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000003')

    ).

*   delete existing entries in the database table
    DELETE FROM ztb_rap_emp_887.

*   insert the new table entries
    INSERT ztb_rap_emp_887 FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).
  endmethod.
endclass.
