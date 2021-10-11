unit timetest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    StaticText1: TStaticText;
    timetest: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  vartimetest:string;
  
implementation

uses testrustonem1;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
 if timetest.Text='' then timetest.Text:=inttostr(30) else
  testrustonem.Edit1.Text:=timetest.Text;
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
timetest1.Form5.close;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    testrustonem.Edit1.Text:=timetest.Text;
end;

end.
