unit PeredNemtoRus1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TPerevodNemtoRus = class(TForm)
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
  PerevodNemtoRus: TPerevodNemtoRus;
  b:integer;
implementation

uses Unit1, Info1, Help1, Unit4, nemtorusform;

{$R *.dfm}

procedure TPerevodNemtoRus.Button1Click(Sender: TObject);
begin
  PeredNemtoRus1.PerevodNemtoRus.Close
end;


procedure TPerevodNemtoRus.BitBtn1Click(Sender: TObject);
begin
PeredNemtoRus1.PerevodNemtoRus.close;
end;

procedure TPerevodNemtoRus.N4Click(Sender: TObject);
begin
  PeredNemtoRus1.PerevodNemtoRus.close;
end;

procedure TPerevodNemtoRus.FormShow(Sender: TObject);
begin
 Edit1.Text:=Nemtorusform.Nemtorusform1.Edit1.Text;
 Edit2.Text:=Nemtorusform.Nemtorusform1.Memo2.Lines[c];
end;

procedure TPerevodNemtoRus.N11Click(Sender: TObject);
begin
 help1.Help.ShowModal;
end;

procedure TPerevodNemtoRus.N12Click(Sender: TObject);
begin
 info.ShowModal;
end;

end.
