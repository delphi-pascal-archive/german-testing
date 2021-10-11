unit perevodslova;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   c:integer;
  end;

var
  Form4: TForm4;
  b:integer;
implementation

uses Unit1, Info1, Help1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  form4.Close;
end;


procedure TForm4.BitBtn1Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.N4Click(Sender: TObject);
begin
  Form4.Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
 Edit1.Text:=Form1.Edit1.Text;
 Edit2.Text:=Form1.Memo2.Lines[c];
end;

procedure TForm4.N11Click(Sender: TObject);
begin
 help1.Help.ShowModal;
end;

procedure TForm4.N12Click(Sender: TObject);
begin
 info.ShowModal;
end;

end.
