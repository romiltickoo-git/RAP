@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View for RAP EMP table'
@Metadata.allowExtensions: true
define root view entity ZI_RAP_EMP_887 
as select from ztb_rap_emp_887

{
  key employee_id         as Employee_Id,
      employee_name       as Employee_Name,
      employee_address    as Employee_Address,
      deparment_id        as Deparment_Id
}
