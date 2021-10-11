unit redactorslov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit, Menus, ComCtrls, ToolWin, ActnMan,
  ActnCtrls, Buttons, ActnMenus, AppEvnts;

type
  TRedactor1 = class(TForm)
    ListNem: TMemo;
    ListRus: TMemo;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Edit2: TEdit;
    StaticText4: TStaticText;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    OpenDialogNem: TOpenDialog;
    OpenDialogRus: TOpenDialog;
    SaveNem: TSaveDialog;
    SaveRus: TSaveDialog;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
{    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);}
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Redactor1: TRedactor1;

implementation

uses Help1, Info1;

{$R *.dfm}

{procedure TForm1.Button1Click(Sender: TObject);
var f:string;
begin
 if Opendialog1.Execute then
 f:=opendialog1.FileName;
 memo1.Lines.LoadFromFile(f);
end;

procedure TForm1.Button3Click(Sender: TObject);
var f:string;
begin
 if savedialog1.Execute then
 f:=savedialog1.FileName;
 memo1.Lines.SaveToFile(f);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 if memo1.lines.Count<>0 then
  memo1.Lines.Delete(memo1.CaretPos.Y);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
memo1.Lines.Add(edit1.Text);
end; }


procedure TRedactor1.N4Click(Sender: TObject);
var f:string;
begin
 If OpenDialogNem.Execute then
   f:=OpenDialogNem.FileName;
   ListNem.Lines.LoadFromFile(f);
end;

procedure TRedactor1.N7Click(Sender: TObject);
var f:string;
begin
 If OpenDialogRus.Execute then
    f:=OpenDialogRus.FileName;
    ListRus.Lines.LoadFromFile(f);
end;

procedure TRedactor1.N10Click(Sender: TObject);
begin
 close;
end;

procedure TRedactor1.N5Click(Sender: TObject);
var f:string;
begin
 if SaveNem.Execute then
 f:=SaveNem.FileName;
 ListNem.Lines.SaveToFile(f);
end;

procedure TRedactor1.N8Click(Sender: TObject);
var f:string;
begin
 if SaveRus.Execute then
 f:=SaveRus.FileName;
 ListRus.Lines.SaveToFile(f);
end;

procedure TRedactor1.N15Click(Sender: TObject);
var f:TFileStream;
begin
 try
  f:=TFileStream.Create('c:\Program Files\PreveodNem\Base\NemBase.sl',fmOpenReadWrite);
 except
  f.Free;
 end;
  f.Free;
 end;

procedure TRedactor1.N12Click(Sender: TObject);
begin
ListNem.Lines.Add(edit1.Text);
end;

procedure TRedactor1.N18Click(Sender: TObject);
begin
ListRus.Lines.Add(edit2.Text);
end;

procedure TRedactor1.N11Click(Sender: TObject);
begin
 if listNem.lines.Count<>0 then
  ListNem.Lines.Delete(ListNem.CaretPos.Y);
end;

procedure TRedactor1.N19Click(Sender: TObject);
begin
 if listRus.lines.Count<>0 then
  ListRus.Lines.Delete(ListRus.CaretPos.Y);
end;

procedure TRedactor1.ApplicationEvents1Hint(Sender: TObject);
begin
 StatusBar1.SimpleText:=Application.Hint;
end;

procedure TRedactor1.BitBtn1Click(Sender: TObject);
var f:TFileStream;
begin
 try
  f:=TFileStream.Create('c:\Program Files\PreveodNem\Base\RusBase.sl',fmOpenReadWrite);
 except
  f.Free;
 end;
  f.Free;
end;

procedure TRedactor1.BitBtn2Click(Sender: TObject);
var f:string;
begin
 If OpenDialogNem.Execute then
   f:=OpenDialogNem.FileName;
   ListNem.Lines.LoadFromFile(f);
end;

procedure TRedactor1.BitBtn3Click(Sender: TObject);
var f:string;
begin
 if SaveNem.Execute then
 f:=SaveNem.FileName;
 ListNem.Lines.SaveToFile(f);
end;

procedure TRedactor1.BitBtn4Click(Sender: TObject);
var f:string;
begin
 If OpenDialogRus.Execute then
    f:=OpenDialogRus.FileName;
    ListRus.Lines.LoadFromFile(f);
end;

procedure TRedactor1.BitBtn5Click(Sender: TObject);
var f:string;
begin
 if SaveRus.Execute then
 f:=SaveRus.FileName;
 ListRus.Lines.SaveToFile(f);
end;

procedure TRedactor1.N13Click(Sender: TObject);
begin
 Help1.Help.ShowModal; 
end;

procedure TRedactor1.N14Click(Sender: TObject);
begin
 Info1.Info.ShowModal;
end;

procedure TRedactor1.BitBtn7Click(Sender: TObject);
begin
 ListNem.Lines.Add(edit1.Text);
end;

procedure TRedactor1.BitBtn8Click(Sender: TObject);
begin
 if listNem.lines.Count<>0 then
  ListNem.Lines.Delete(ListNem.CaretPos.Y);
end;

procedure TRedactor1.BitBtn9Click(Sender: TObject);
begin
ListRus.Lines.Add(edit2.Text);
end;

procedure TRedactor1.BitBtn10Click(Sender: TObject);
begin
 if listRus.lines.Count<>0 then
  ListRus.Lines.Delete(ListRus.CaretPos.Y);
end;

end.
