unit timertest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Ttimertest = class(TForm)
    Label1: TLabel;
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
  timertest: Ttimertest;

implementation

uses testrustonem1, testnemtorus1;

{$R *.dfm}

procedure Ttimertest.BitBtn1Click(Sender: TObject);
begin
 if timetest.Text='' then timetest.Text:=inttostr(30) else
  testrustonem.Edit1.Text:=timetest.Text;
end;

procedure Ttimertest.FormDestroy(Sender: TObject);
begin
timertest.close;
end;

procedure Ttimertest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 testnemtorus.Edit1.Text:=timetest.Text;
end;

end.
