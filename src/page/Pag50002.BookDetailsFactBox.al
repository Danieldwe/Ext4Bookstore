page 50002 "Book Details FactBox"
{
  Caption = 'Book Details FactBox';
  PageType = CardPart;
  SourceTable = T_Book;
  
  layout
  {
    area(content)
    {
      field("No.";"No.")
      {
        ApplicationArea = All;
        trigger OnDrillDown()
        begin
          ShowDetails();
        end;
      }
      field(Title;Title)
      {
        ApplicationArea = All;
      }
      field(Author;Author)
      {
        ApplicationArea = All;
      }
      field("No. of Customers";"No. of Customers")
      {
        ApplicationArea = All;
      }    
    }
  }
  local procedure ShowDetails()
  begin
    Page.Run(Page::P_BookCard, Rec);
  end;
}