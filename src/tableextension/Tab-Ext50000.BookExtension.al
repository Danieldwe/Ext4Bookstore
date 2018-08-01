tableextension 50000 "BookExtension" extends T_Book
{
  fields
  {
    field(50000; "No. of Customers"; Integer)
    {
      Caption = 'No. of Customers';
      Editable = false;
      FieldClass = FlowField;
      CalcFormula = count(Customer where("Favorite Book No." = field("No.")));
    }
  }
}