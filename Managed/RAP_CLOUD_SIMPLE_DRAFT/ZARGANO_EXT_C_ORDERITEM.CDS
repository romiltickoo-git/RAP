@Metadata.layer: #CORE

annotate entity ZARGANO_C_ORDER_ITEMS
    with 
{
@UI.lineItem: [{ position: 10, label: 'Order Item Id' }]
//@UI.identification: [{position: 10, label: 'Order ID'  }]
   Orderitemid;
@UI.lineItem: [{ position: 20, label: 'Order Item' }]   
//@UI.identification: [{position: 20, label: 'Customer ID'  }]
   Orderid;
@UI.lineItem: [{ position: 30, label: 'Product Name' }]   
   Productname;
@UI.lineItem: [{ position: 40, label: 'Unit' }]   
   Unitfield;
@UI.lineItem: [{ position: 50, label: 'Quantity' }]   
   Quantity;
@UI.lineItem: [{ position: 60, label: 'Curreny' }]   
   Cukyfield;
@UI.lineItem: [{ position: 70, label: 'Unit Price ' }]   
   Unitprice;
@UI.hidden: true   
   Createdby;
@UI.hidden: true   
   Createdat;
@UI.hidden: true   
   Lastchangedby;
@UI.hidden: true   
   Changedat;
   /* Associations */
  // _header;
    
}
