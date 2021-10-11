unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,Math, StdCtrls, Buttons;

type
  TForm7 = class(TForm)
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;

    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}



procedure TForm7.FormActivate(Sender: TObject);
var i:integer;
begin
  for i:=0 to 20 do
begin
  ProgressBar1.Position:=ProgressBar1.Position+5;
  Sleep(100); //Делаю задержку в 100 миллисекунд
end;
  ProgressBar1.Position:=100;
  BitBtn1.Visible:=true;
end;



procedure TForm7.BitBtn1Click(Sender: TObject);
begin
close;
end;

end.
