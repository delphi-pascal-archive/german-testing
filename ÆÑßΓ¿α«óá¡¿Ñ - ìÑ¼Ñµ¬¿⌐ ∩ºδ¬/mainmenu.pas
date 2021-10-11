unit mainmenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons;

type
  Tmenu = class(TForm)
    downloadimage: TImage;
    nemtorusbutton: TSpeedButton;
    rustonembutton: TSpeedButton;
    testbutton: TSpeedButton;
    exitbutton: TSpeedButton;
    redactbutton: TSpeedButton;
    procedure exitbuttonClick(Sender: TObject);
    procedure rustonembuttonClick(Sender: TObject);
    procedure redactbuttonClick(Sender: TObject);
    procedure nemtorusbuttonClick(Sender: TObject);
    procedure testbuttonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu: Tmenu;

implementation

uses Unit1, redactorslov, nemtorusform, PeredNemtoRus1, choisetest1,
  testrustonem1, testnemtorus1;

{$R *.dfm}

procedure Tmenu.exitbuttonClick(Sender: TObject);
begin
close;
end;

procedure Tmenu.rustonembuttonClick(Sender: TObject);
begin
 form1.ShowModal;
end;

procedure Tmenu.redactbuttonClick(Sender: TObject);
begin
 redactorslov.Redactor1.ShowModal;
end;

procedure Tmenu.nemtorusbuttonClick(Sender: TObject);
begin
Nemtorusform.Nemtorusform1.ShowModal;
end;

procedure Tmenu.testbuttonClick(Sender: TObject);
begin
 choisetest1.choisetest.ShowModal;
end;

end.
