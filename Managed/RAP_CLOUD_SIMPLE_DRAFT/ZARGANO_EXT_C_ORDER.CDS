@Metadata.layer: #CORE
@UI.headerInfo: {
    typeName: 'Order',
    typeNamePlural: 'Orders',
    title: {
        type: #STANDARD,
        label: 'Orderid',
        value: 'Orderid'
    }, description:{
         type: #STANDARD,
         label: 'Amount',
         value:'Amount'
     }
    
}
@Search.searchable: true
annotate entity ZARGANO_C_ORDER
    with 
{    

@UI.facet: [{
    id: 'ID_ORDER',
    purpose: #STANDARD,
    position: 10,
    label: 'Order',
    type: #IDENTIFICATION_REFERENCE
},
{ 
   id : 'ID_ITEM',
   purpose: #STANDARD,
   position: 20,
   label: 'Order Item',
   type: #LINEITEM_REFERENCE,
   targetElement: '_items'
}

]

@UI.lineItem: [{ position: 10, label: 'Order ID' }]
@UI.identification: [{position: 10, label: 'Order ID'  }]
 Orderid;
@UI.lineItem: [{ position: 20, label: 'Customer ID' }]
@UI.identification: [{position: 20, label: 'Customer ID'  }] 
 Customerid;
@UI.lineItem: [{ position: 30, label: 'Order Date' }] 
@UI.identification: [{position: 30, label: 'Order Date'  }] 
 Orderdate;
@UI.lineItem: [{ position: 40, label: 'Currency' }] 
@UI.identification: [{position: 40, label: 'Currency'  }] 
 Curr;
@UI.lineItem: [{ position: 50, label: 'Amount' }] 
@UI.identification: [{position: 50, label: 'Amount'  }] 
 Amount;
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.8 
@UI.lineItem: [{ position: 60, label: 'Status' }]
@UI.identification: [{position: 60, label: 'Status'  }]  
 Status;
@UI.lineItem: [{ position: 70, label: 'Comments' }] 
 Comments;
@UI.hidden: true
 Createdby;
@UI.hidden: true 
 Createdat;
@UI.hidden: true 
 Lastchangedby;
@UI.hidden: true 
 Changedat;
 /* Associations */
 //_items;
    
}
