@Metadata.layer: #PARTNER

@UI.headerInfo: {
    typeName: 'Purchase Order',
    typeNamePlural: 'Purchase Orders',
    title: {
        type: #STANDARD,
        label: 'Purchase Order No',
        value: 'PoNum'
    },
    description: {
        type: #STANDARD,
        label: 'Document Category',
        value: 'Vendor'
    }
}
annotate view ZMAN_C_PO_HEADER with
{
 @UI.facet: [{
     id: 'PO_HDR',
     purpose: #STANDARD,
     position: 10,
     label: 'Purchase Order header',
     type: #IDENTIFICATION_REFERENCE
 }]

  @UI.identification: [{ position: 10,label:'Purchase Order No' }]
  PoNum;
  @UI.identification: [{ position: 20,label:'Document Category' }]
  @UI.lineItem: [{ position: 20,label:'Document Category' }]
  DocCat;
  @UI.lineItem: [{ position: 30,label:'Type' }]
  Type;
  @UI.identification: [{ position: 30,label:'Company Code' }]
  @UI.lineItem: [{ position: 40,label:'Company Code' }]
  CompCode;
  @UI.lineItem: [{ position: 50,label:'Organization' }]
  Org;
  @UI.identification: [{ position: 60,label:'Status' }]
  @UI.lineItem: [{ position: 60,label:'Status' }]
  Status;
  @UI.identification: [{ position: 40,label:'Vendor No' }]
  @UI.lineItem: [{ position: 70,label:'Vendor No' }]
  Vendor;
  @UI.identification: [{ position: 50,label:'Plant' }]
  @UI.lineItem: [{ position: 80,label:'Plant' }]
  Plant;
  @UI.lineItem: [{ position: 90,label:'CreateBy' }]
  CreateBy;
  @UI.lineItem: [{ position: 100,label:'Created Date Time' }]
  CreatedDateTime;
  @UI.lineItem: [{ position: 110,label:'Changed Date Time' }]
  ChangedDateTime;
  @UI.lineItem: [{ position: 120,label:'Local Last ChangedBy' }]
  LocalLastChangedBy;

}
