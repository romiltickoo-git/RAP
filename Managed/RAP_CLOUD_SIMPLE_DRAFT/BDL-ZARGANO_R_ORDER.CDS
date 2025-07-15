managed implementation in class zbp_argano_r_order unique;
strict ( 2 );
with draft;
define behavior for ZARGANO_R_ORDER alias Order
persistent table zord_order
draft table zord_order_d
lock master total etag Changedat
authorization master ( instance )
etag master Changedat
{
  create ( authorization : global );
  update;
  delete;
  field ( readonly ) Orderid;
  association _items { create; }
  draft action Activate;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;
}

define behavior for ZARGANO_R_ORDER_ITEMS alias OrderItems
persistent table zord_order_i
draft table zord_order_i_d
lock dependent by _header
authorization dependent by _header
etag master Changedat
{
  update;
  delete;
  field ( readonly ) Orderitemid,Orderid;
  association _header;
}
