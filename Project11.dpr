program Project11;

uses
  Vcl.Forms,
  Unit13 in 'Unit13.pas' {Form13},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
