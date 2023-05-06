unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit3;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;

    procedure Button1Click(Sender: TObject);
    procedure fer(Sender: TObject; var Action: TCloseAction);

  private
    { Déclarations privées }
  public
    J1, J2 : String;
    { Déclarations publiques }

  end;

var
  Form2: TForm2;


implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 if (Edit1.Text = '') or (Edit2.text = '')  then
 begin
   ShowMessage('Paramètres invalides !');
 end else begin
   J1 := Edit1.Text;
   J2 := Edit2.Text;
   Form2.Close;
 end;
end;

procedure TForm2.fer(Sender: TObject; var Action: TCloseAction);
begin
    Unit3.L1 := J1;
    Unit3.L2 := J2;
end;

end.
