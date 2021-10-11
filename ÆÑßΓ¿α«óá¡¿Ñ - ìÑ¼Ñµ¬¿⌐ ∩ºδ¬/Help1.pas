unit Help1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, Menus;

type
  THelp = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList1: TImageList;
    Memo1: TMemo;
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Help: THelp;

implementation

uses Unit1, Info1;

{$R *.dfm}

procedure THelp.N4Click(Sender: TObject);
begin
  Help1.Help.Close;
end;

procedure THelp.N8Click(Sender: TObject);
begin
  Info1.Info.ShowModal;
end;

end.
