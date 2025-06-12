@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View of ZI_STUDENT_5000'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity ZC_STUDENT_5000
as projection on ZI_STUDENT_5000 as Student   
{
    key Id,
    Firstname,
    Lastname,
    Age,
    Course,
    Courseduration,
    Status,
    Gender,
    Dob
}
