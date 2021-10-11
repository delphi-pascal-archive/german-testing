unit testnemtorus1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Menus, jpeg;

type
  Ttestnemtorus = class(TForm)
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    StaticText1: TStaticText;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
{    procedure BitBtn4Click(Sender: TObject);}
    procedure BitBtn3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  testnemtorus: Ttestnemtorus;
  int:integer;
    c:integer;
    n:integer;
    a:string;
    i,b:integer;
    k:integer;

implementation

uses timetest1, Help1, Info1, timertest1;

{$R *.dfm}

procedure Ttestnemtorus.Button1Click(Sender: TObject);
begin
timer1.Enabled:=true;
end;

procedure Ttestnemtorus.Timer1Timer(Sender: TObject);
begin
int:=int-1;
if int=0 then begin timer1.Enabled:=false;
 application.MessageBox('Все','');
 end;
edit2.Text:=inttostr(int);
end;

procedure Ttestnemtorus.BitBtn1Click(Sender: TObject);
begin
  label1.Caption:='0';
  randomize;
  n:=random(Memo1.Lines.Count);
  LabeledEdit1.Text:=Memo1.Lines[n];
  c:=n;
  a:=LabeledEdit2.Text;
  b:=n;
 int:=strtoint(Edit1.Text);
 timer1.Enabled:=true;
end;

procedure Ttestnemtorus.N3Click(Sender: TObject);
begin
timer1.Enabled:=false;
close;
end;

procedure Ttestnemtorus.N5Click(Sender: TObject);
begin
  label1.Caption:='0';
  randomize;
  n:=random(Memo1.Lines.Count);
  LabeledEdit1.Text:=Memo1.Lines[n];
  c:=n;
  a:=LabeledEdit2.Text;
  b:=n;
 int:=strtoint(Edit1.Text);
 timer1.Enabled:=true;
end;

procedure Ttestnemtorus.BitBtn2Click(Sender: TObject);
begin
timer1.Enabled:=false;
end;

procedure Ttestnemtorus.N4Click(Sender: TObject);
begin
timer1.Enabled:=false;
end;

procedure Ttestnemtorus.FormCreate(Sender: TObject);
begin
 edit2.Text:=edit1.Text;
 memo1.Lines.LoadFromFile(ExtractFilePath(Paramstr(0))+'\Base\NemBase.sl');
 memo2.Lines.LoadFromFile(ExtractFilePath(Paramstr(0))+'\Base\RusBase.sl');
end;

procedure Ttestnemtorus.FormDestroy(Sender: TObject);
begin
edit2.Text:=edit1.Text;
end;

procedure Ttestnemtorus.FormShow(Sender: TObject);
begin
edit2.Text:=edit1.Text;
end;

procedure Ttestnemtorus.BitBtn3Click(Sender: TObject);
begin
if timer1.Enabled=false then begin  int:=strtoint(Edit1.Text);
                                    timer1.Enabled:=true;
                                    label1.Caption:='0';
                                    end;
If LabeledEdit2.Text=Memo2.Lines[b]  then
 begin
  k:=k+1;
  label1.Caption:=inttostr(k);
 end
 else
    randomize;
  n:=random(Memo1.Lines.Count);
  LabeledEdit1.Text:=Memo1.Lines[n];
  c:=n;
  a:=LabeledEdit2.Text;
  b:=n;
  end;


procedure Ttestnemtorus.N10Click(Sender: TObject);
begin
 timer1.Enabled:=false;
 timertest.ShowModal;
end;

procedure Ttestnemtorus.N7Click(Sender: TObject);
begin
 help1.Help.ShowModal;
end;

procedure Ttestnemtorus.N8Click(Sender: TObject);
begin
 info1.Info.ShowModal;
end;

end.
