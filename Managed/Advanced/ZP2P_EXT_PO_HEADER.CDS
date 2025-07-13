@Metadata.layer: #CORE

@UI.headerInfo: {
    typeName: 'Purchase Order',
    typeNamePlural: 'Purchase Orders',
    title: {
        type: #STANDARD,
        label: 'Purchase Order',
        value: 'PoNo'
    },
    description: {
        type: #STANDARD,
        label: 'Plant',
        value: 'Plant'
    }
}
annotate view ZP2P_C_PO_HEADER with
{
  @UI.facet: [{
      id: 'PO_hdr',
      purpose: #STANDARD,
      position: 10,
      label: 'Purchase',
      type: #IDENTIFICATION_REFERENCE
  }]

  @UI.identification: [{ position: 10 , label: 'Purchase order'} , 
                       { type: #FOR_ACTION,dataAction: 'SetStatus', label: 'Change Status' },
                       { type: #FOR_ACTION,dataAction: 'CopyPO', label: 'CopyPO' },
                       { type: #FOR_ACTION,dataAction: 'CreatePo', label: 'CreatePo' }
                      ]
//BOC  @Action : Change status                        
  @UI.lineItem: [{ position: 10, label: 'Purchase Order No' },
                 { type: #FOR_ACTION,dataAction: 'SetStatus', label: 'Change Status' },
                 { type: #FOR_ACTION,dataAction: 'CopyPO', label: 'CopyPO' },
                 { type: #FOR_ACTION,dataAction: 'CreatePo', label: 'CreatePo' }
                ]
//EOC  @Action : Change status                 
  PoNo;
  @UI.identification: [{ position: 20 , label: 'Purchase Document Category'}]
  @UI.lineItem: [{ position: 20, label: 'Purchase Document Category' }]
  DocCat;
  @UI.identification: [{ position: 30 , label: 'Purchase Order Type'}]
  @UI.lineItem: [{ position: 30, label: 'Purchase Order Type' }]
  Type;
  @UI.identification: [{ position: 40 , label: 'Company Code'}]
  @UI.lineItem: [{ position: 40, label: 'Company Code' }]
  CompCode;
  @UI.identification: [{ position: 70 , label: 'Purchase Org'}]
  @UI.lineItem: [{ position: 50, label: 'Purchase Organisation' }]
  Org;
  @UI.identification: [{ position: 50 , label: 'Status'}]
  @UI.lineItem: [{ position: 60, label: 'Status' }]
  @Consumption.valueHelpDefinition: [{
      entity: {
          name: 'ZI_STATUS_VH',
          element: 'status_code'
      }
  }]
  @UI.textArrangement: #TEXT_ONLY
  Status;
  @UI.identification: [{ position: 60 , label: 'Active'}]
  @UI.lineItem: [{ position: 70, label: 'Active' }]
  Active;
  @UI.identification: [{ position: 80 , label: 'Vendor No'}]
  @UI.lineItem: [{ position: 80, label: 'Vendor No' }]
  Vendor;
  @UI.identification: [{ position: 90 , label: 'Plant'}]
  @UI.lineItem: [{ position: 90, label: 'Plant' }]
  Plant;
  @UI.hidden: true
  CreateBy;
  @UI.hidden: true
  CreatedDateTime;
  @UI.hidden: true
  ChangedDateTime;
  @UI.hidden: true
  LocalLastChangedBy;
}
