unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, jpeg, ComCtrls, unit4;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
   c:integer;
  end;

var
  Form1: TForm1;
  n:integer;

implementation

uses Unit2, Unit3, Help1, Info1, Unit7, redactorslov;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var c:integer;
begin
  randomize;
  n:=random(Memo1.Lines.Count);
  Edit1.Text:=Memo1.Lines[n];
  c:=n;
  Form4.c:=c;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a:string;
    b:integer;
begin
 a:=edit2.Text;
 b:=n;
If Edit2.Text=Memo2.Lines[b]  then
 begin
 form1.Hide;
 form2.ShowModal;
 form1.Show;
end
 else
   begin
   form1.Hide;
   form3.ShowModal;
   form1.show;
   end;
end;


procedure TForm1.N4Click(Sender: TObject);
begin
 close;
end;

procedure TForm1.N2Click(Sender: TObject);
var f:string;
 begin
    if Opendialog1.Execute then
     begin
      try
      f:=opendialog1.FileName;
      memo1.Lines.LoadFromFile(f);
      memo2.Lines.LoadFromFile(ExtractFilePath(Paramstr(0))+'\Base\NemBase.sl');
      Form7.ShowModal;
      except
      application.MessageBox('Невозможно загрузить базу','',MB_OKCANCEL);
      end;
      end;
    exit;
 end;

procedure TForm1.N11Click(Sender: TObject);
begin
 Help1.Help.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 Info1.Info.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
 Form4.ShowModal;
end;

end.
