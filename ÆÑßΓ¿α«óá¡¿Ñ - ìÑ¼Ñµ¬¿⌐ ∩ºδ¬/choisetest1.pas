unit choisetest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons;

type
  Tchoisetest = class(TForm)
    downloadimage: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  choisetest: Tchoisetest;

implementation

uses testrustonem1, testnemtorus1;

{$R *.dfm}

procedure Tchoisetest.SpeedButton3Click(Sender: TObject);
begin
 close;
end;

procedure Tchoisetest.SpeedButton1Click(Sender: TObject);
begin
 testrustonem.ShowModal;
end;

procedure Tchoisetest.SpeedButton2Click(Sender: TObject);
begin
 testnemtorus.ShowModal;
end;

end.
