unit Info1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, StdCtrls;

type
  TInfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList1: TImageList;
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Info: TInfo;

implementation

uses Help1, Unit1;

{$R *.dfm}

procedure TInfo.N4Click(Sender: TObject);
begin
  Info1.Info.Close;
end;

procedure TInfo.N7Click(Sender: TObject);
begin
  Help1.Help.ShowModal;
end;

end.
