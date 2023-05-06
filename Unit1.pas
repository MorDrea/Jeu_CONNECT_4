unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
  Joueur1, Joueur2 : String;
    { Déclarations publiques }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Joueur1 := Form1.Edit1.Text;
  Joueur2 := Form1.Edit2.Text;
end;

begin

  if (Form1.Edit1.Text = '') or (Form1.Edit1.Text = '') then
  begin
    Form1.Button1.Enabled := false;
  end else begin
    Form1.Button1.Enabled := true;
  end;


end.
