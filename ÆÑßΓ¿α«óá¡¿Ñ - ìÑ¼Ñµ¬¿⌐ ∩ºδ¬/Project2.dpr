program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Help1 in 'Help1.pas' {Help},
  Info1 in 'Info1.pas' {Info},
  Unit4 in 'Unit4.pas' {Form4},
  Unit7 in 'Unit7.pas' {Form7},
  redactorslov in 'redactorslov.pas' {Redactor1},
  mainmenu in 'mainmenu.pas' {menu},
  nemtorusform in 'nemtorusform.pas' {Nemtorusform1},
  PeredNemtoRus1 in 'PeredNemtoRus1.pas' {PerevodNemtoRus},
  choisetest1 in 'choisetest1.pas' {choisetest},
  testrustonem1 in 'testrustonem1.pas' {testrustonem},
  timetest1 in 'timetest1.pas' {Form5},
  testnemtorus1 in 'testnemtorus1.pas' {testnemtorus},
  timertest1 in 'timertest1.pas' {timertest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmenu, menu);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(THelp, Help);
  Application.CreateForm(TInfo, Info);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TRedactor1, Redactor1);
  Application.CreateForm(TNemtorusform1, Nemtorusform1);
  Application.CreateForm(TPerevodNemtoRus, PerevodNemtoRus);
  Application.CreateForm(Tchoisetest, choisetest);
  Application.CreateForm(Ttestrustonem, testrustonem);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(Ttestnemtorus, testnemtorus);
  Application.CreateForm(Ttimertest, timertest);
  Application.Run;
end.
