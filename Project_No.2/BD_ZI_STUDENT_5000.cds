managed implementation in class zbp_i_student_5000 unique;
strict ( 2 );
define behavior for ZI_STUDENT_5000 alias Student
persistent table zcim_rap_5000
lock master
authorization master ( instance )
//etag master <field_name>
{
  create;
  update;
  delete;
  field ( numbering : managed,readonly ) Id;

  mapping for zcim_rap_5000
    {
      Id             = id;
      Firstname      = firstname;
      Lastname       = lastname;
      Age            = age;
      Course         = course;
      Courseduration = courseduration;
      Status         = status;
      Gender         = gender;
      Dob            = dob;
    }


}
