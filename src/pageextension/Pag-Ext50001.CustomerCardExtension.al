pageextension 50001 "CustomerCardExtension" extends "Customer Card"
{
  layout
  {
    addbefore(Control149)
    {
      part("Book Details FactBox";"Book Details FactBox")
      {
        ApplicationArea= All;
        Caption = 'Book Details';
        SubPageLink = "No." = field("Favorite Book No.");
      }
    }
  }
}