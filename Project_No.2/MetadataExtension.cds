@Metadata.layer: #PARTNER
@UI:{ 
      headerInfo:{ 
                    typeName: 'Student'        ,
                    typeNamePlural: 'Students' ,
                    title:{  type: #STANDARD  ,label: 'Student' , value: 'Id'  }
                 }
    }
annotate view ZC_STUDENT_5000 with
{
@UI:{ 
       facet: [{ id          : 'Student' ,
                 purpose     : #STANDARD ,
                 type        : #IDENTIFICATION_REFERENCE ,
                 label       : 'Student'                 ,
                 position    : 10     
                 
              
              }]
     }


  @UI: { lineItem: [{ position: 10 ,label: 'Student ID' }],
         identification: [{ position: 10, label: 'Student ID' }]
         
       }
  Id;
  @UI: { lineItem: [{ position: 10 ,label: 'First Name' }],
         identification: [{ position: 10, label: 'First Name' }],
         selectionField: [{ position: 10 }]
       }
  Firstname;
  @UI: { lineItem: [{ position: 10 ,label: 'Last Name' }],
         identification: [{ position: 10, label: 'Last Name' }],
         selectionField: [{ position: 20 }]
       }
  Lastname;
  @UI: { lineItem: [{ position: 10 ,label: 'Age' }],
         identification: [{ position: 10, label: 'Age' }]
       }
  Age;
  @UI: { lineItem: [{ position: 10 ,label: 'Course' }],
         identification: [{ position: 10, label: 'Course' }]
       }
  Course;
  @UI: { lineItem: [{ position: 10 ,label: 'Duration of Course' }],
         identification: [{ position: 10, label: 'Duration of Course' }]
       }
  Courseduration;
  @UI: { lineItem: [{ position: 10 ,label: 'Status' }],
         identification: [{ position: 10, label: 'Status' }]
       }
  Status;
  @UI: { lineItem: [{ position: 10 ,label: 'Gender' }],
         identification: [{ position: 10, label: 'Gender' }]
       }
  Gender;
  @UI: { lineItem: [{ position: 10 ,label: 'Date of Birth' }],
         identification: [{ position: 10, label: 'Date of Birth' }]
       }
  Dob;
}
