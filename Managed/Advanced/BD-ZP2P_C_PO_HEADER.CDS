projection;
strict ( 2 );

define behavior for ZP2P_C_PO_HEADER alias PO_HEADER
{
  use create;
  use update;
  use delete;
//BOC  @Action : Change status
  use action SetStatus;
//EOC  @Action : Change status

  use action CopyPO;
  use action CreatePo;
}
