unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm13 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Panel3: TPanel;
    Shape2: TShape;
    Panel4: TPanel;
    Shape3: TShape;
    Panel5: TPanel;
    Shape4: TShape;
    Panel6: TPanel;
    Shape5: TShape;
    Panel7: TPanel;
    Shape6: TShape;
    Panel8: TPanel;
    Shape7: TShape;
    Panel9: TPanel;
    Shape8: TShape;
    Panel10: TPanel;
    Shape9: TShape;
    Panel11: TPanel;
    Shape10: TShape;
    Panel12: TPanel;
    Shape11: TShape;
    Panel13: TPanel;
    Shape12: TShape;
    Panel14: TPanel;
    Shape13: TShape;
    Panel15: TPanel;
    Shape14: TShape;
    Panel16: TPanel;
    Shape15: TShape;
    Panel17: TPanel;
    Shape16: TShape;
    Panel18: TPanel;
    Shape17: TShape;
    Panel19: TPanel;
    Shape18: TShape;
    Panel20: TPanel;
    Shape19: TShape;
    Panel21: TPanel;
    Shape20: TShape;
    Panel22: TPanel;
    Shape21: TShape;
    Panel23: TPanel;
    Shape22: TShape;
    Panel24: TPanel;
    Shape23: TShape;
    Panel25: TPanel;
    Shape24: TShape;
    Panel26: TPanel;
    Shape25: TShape;
    Panel27: TPanel;
    Shape26: TShape;
    Panel28: TPanel;
    Shape27: TShape;
    Panel29: TPanel;
    Shape28: TShape;
    Panel30: TPanel;
    Shape29: TShape;
    Panel31: TPanel;
    Shape30: TShape;
    Panel32: TPanel;
    Shape31: TShape;
    Panel33: TPanel;
    Shape32: TShape;
    Panel34: TPanel;
    Shape33: TShape;
    Panel35: TPanel;
    Shape34: TShape;
    Panel36: TPanel;
    Shape35: TShape;
    Panel37: TPanel;
    Shape36: TShape;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure HorizVerif();
    procedure VertiVerif();
    procedure DiagVerif();
    procedure coulJet();
    procedure btnCoul();


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    L1, L2 : String;
  end;

var
  Form13: TForm13;
  tab : array[0..5, 0..5] of Integer;
  a : Integer = 0;
  b : Integer = 0;
  c : Integer = 0;
  d : Integer = 0;
  e : Integer = 0;
  f : Integer = 0;
  y, z : Integer;
  win : Integer;
  jw : Boolean = false;

implementation
type
Point = record
    X, Y: Integer;
end;

var
jetons: array[0..3] of Point;





{$R *.dfm}


procedure TForm13.btnCoul();
begin
        Button1.Enabled := false;
        Button2.Enabled := false;
        Button3.Enabled := false;
        Button4.Enabled := false;
        Button5.Enabled := false;
        Button6.Enabled := false;
        coulJet();
end;

procedure TForm13.CoulJet();
var i : Integer;
begin

    if win = 0 then
    begin
     for i := 0 to 3 do
    begin
      if (jetons[i].X = 0) and (jetons[i].Y = 0) then
      begin
          shape31.Brush.Color := clGreen;
      end else if (jetons[i].X = 0) and (jetons[i].Y = 1) then
      begin
          shape32.Brush.Color := clGreen;
      end else if (jetons[i].X = 0) and (jetons[i].Y = 2) then
      begin
          shape33.Brush.Color := clGreen;
      end else if (jetons[i].X = 0) and (jetons[i].Y = 3) then
      begin
          shape34.Brush.Color := clGreen;
      end else if (jetons[i].X = 0) and (jetons[i].Y = 4) then
      begin
           shape35.Brush.Color := clGreen;
      end else if (jetons[i].X = 0) and (jetons[i].Y = 5) then
      begin
          shape36.Brush.Color := clGreen;
      end


      else if (jetons[i].X = 1) and (jetons[i].Y = 0) then
      begin
          shape25.Brush.Color := clGreen;
      end else if (jetons[i].X = 1) and (jetons[i].Y = 1) then
      begin
          shape26.Brush.Color := clGreen;
      end else if (jetons[i].X = 1) and (jetons[i].Y = 2) then
      begin
           shape27.Brush.Color := clGreen;
      end else if (jetons[i].X = 1) and (jetons[i].Y = 3) then
      begin
           shape28.Brush.Color := clGreen;
      end else if (jetons[i].X = 1) and (jetons[i].Y = 4) then
      begin
           shape29.Brush.Color := clGreen;
      end else if (jetons[i].X = 1) and (jetons[i].Y = 5) then
      begin
           shape30.Brush.Color := clGreen;
      end



      else if (jetons[i].X = 2) and (jetons[i].Y = 0) then
      begin
           shape19.Brush.Color := clGreen;
      end else if (jetons[i].X = 2) and (jetons[i].Y = 1) then
      begin
           shape20.Brush.Color := clGreen;
      end else if (jetons[i].X = 2) and (jetons[i].Y = 2) then
      begin
           shape21.Brush.Color := clGreen;
      end else if (jetons[i].X = 2) and (jetons[i].Y = 3) then
      begin
            shape22.Brush.Color := clGreen;
      end else if (jetons[i].X = 2) and (jetons[i].Y = 4) then
      begin
            shape23.Brush.Color := clGreen;
      end else if (jetons[i].X = 2) and (jetons[i].Y = 5) then
      begin
            shape24.Brush.Color := clGreen;
      end


      else if (jetons[i].X = 3) and (jetons[i].Y = 0) then
      begin
           shape13.Brush.Color := clGreen;
      end else if (jetons[i].X = 3) and (jetons[i].Y = 1) then
      begin
           shape14.Brush.Color := clGreen;
      end else if (jetons[i].X = 3) and (jetons[i].Y = 2) then
      begin
           shape15.Brush.Color := clGreen;
      end else if (jetons[i].X = 3) and (jetons[i].Y = 3) then
      begin
            shape16.Brush.Color := clGreen;
      end else if (jetons[i].X = 3) and (jetons[i].Y = 4) then
      begin
            shape17.Brush.Color := clGreen;
      end else if (jetons[i].X = 3) and (jetons[i].Y = 5) then
      begin
           shape18.Brush.Color := clGreen;
      end


      else if (jetons[i].X = 4) and (jetons[i].Y = 0) then
      begin
           shape7.Brush.Color := clGreen;
      end else if (jetons[i].X = 4) and (jetons[i].Y = 1) then
      begin
           shape8.Brush.Color := clGreen;
      end else if (jetons[i].X = 4) and (jetons[i].Y = 2) then
      begin
           shape9.Brush.Color := clGreen;
      end else if (jetons[i].X = 4) and (jetons[i].Y = 3) then
      begin
           shape10.Brush.Color := clGreen;
      end else if (jetons[i].X = 4) and (jetons[i].Y = 4) then
      begin
           shape11.Brush.Color := clGreen;
      end else if (jetons[i].X = 4) and (jetons[i].Y = 5) then
      begin
           shape12.Brush.Color := clGreen;
      end


      else if (jetons[i].X = 5) and (jetons[i].Y = 0) then
      begin
          shape1.Brush.Color := clGreen;
      end else if (jetons[i].X = 5) and (jetons[i].Y = 1) then
      begin
          shape2.Brush.Color := clGreen;
      end else if (jetons[i].X = 5) and (jetons[i].Y = 2) then
      begin
          shape3.Brush.Color := clGreen;
      end else if (jetons[i].X = 5) and (jetons[i].Y = 3) then
      begin
          shape4.Brush.Color := clGreen;
      end else if (jetons[i].X = 5) and (jetons[i].Y = 4) then
      begin
          shape5.Brush.Color := clGreen;
      end else if (jetons[i].X = 5) and (jetons[i].Y = 5) then
      begin
          shape6.Brush.Color := clGreen;
      end;
end;
    end else if win = 1 then
             begin
               for i := 0 to 3 do
                  begin
                    if (jetons[i].X = 0) and (jetons[i].Y = 0) then
                    begin
                        shape31.Brush.Color := clYellow;
                    end else if (jetons[i].X = 0) and (jetons[i].Y = 1) then
                    begin
                        shape32.Brush.Color := clYellow;
                    end else if (jetons[i].X = 0) and (jetons[i].Y = 2) then
                    begin
                        shape33.Brush.Color := clYellow;
                    end else if (jetons[i].X = 0) and (jetons[i].Y = 3) then
                    begin
                        shape34.Brush.Color := clYellow;
                    end else if (jetons[i].X = 0) and (jetons[i].Y = 4) then
                    begin
                         shape35.Brush.Color := clYellow;
                    end else if (jetons[i].X = 0) and (jetons[i].Y = 5) then
                    begin
                        shape36.Brush.Color := clYellow;
                    end


                    else if (jetons[i].X = 1) and (jetons[i].Y = 0) then
                    begin
                        shape25.Brush.Color := clYellow;
                    end else if (jetons[i].X = 1) and (jetons[i].Y = 1) then
                    begin
                        shape26.Brush.Color := clYellow;
                    end else if (jetons[i].X = 1) and (jetons[i].Y = 2) then
                    begin
                         shape27.Brush.Color := clYellow;
                    end else if (jetons[i].X = 1) and (jetons[i].Y = 3) then
                    begin
                         shape28.Brush.Color := clYellow;
                    end else if (jetons[i].X = 1) and (jetons[i].Y = 4) then
                    begin
                         shape29.Brush.Color := clYellow;
                    end else if (jetons[i].X = 1) and (jetons[i].Y = 5) then
                    begin
                         shape30.Brush.Color := clYellow;
                    end



                    else if (jetons[i].X = 2) and (jetons[i].Y = 0) then
                    begin
                         shape19.Brush.Color := clYellow;
                    end else if (jetons[i].X = 2) and (jetons[i].Y = 1) then
                    begin
                         shape20.Brush.Color := clYellow;
                    end else if (jetons[i].X = 2) and (jetons[i].Y = 2) then
                    begin
                         shape21.Brush.Color := clYellow;
                    end else if (jetons[i].X = 2) and (jetons[i].Y = 3) then
                    begin
                          shape22.Brush.Color := clYellow;
                    end else if (jetons[i].X = 2) and (jetons[i].Y = 4) then
                    begin
                          shape23.Brush.Color := clYellow;
                    end else if (jetons[i].X = 2) and (jetons[i].Y = 5) then
                    begin
                          shape24.Brush.Color := clYellow;
                    end


                    else if (jetons[i].X = 3) and (jetons[i].Y = 0) then
                    begin
                         shape13.Brush.Color := clYellow;
                    end else if (jetons[i].X = 3) and (jetons[i].Y = 1) then
                    begin
                         shape14.Brush.Color := clYellow;
                    end else if (jetons[i].X = 3) and (jetons[i].Y = 2) then
                    begin
                         shape15.Brush.Color := clYellow;
                    end else if (jetons[i].X = 3) and (jetons[i].Y = 3) then
                    begin
                          shape16.Brush.Color := clYellow;
                    end else if (jetons[i].X = 3) and (jetons[i].Y = 4) then
                    begin
                          shape17.Brush.Color := clYellow;
                    end else if (jetons[i].X = 3) and (jetons[i].Y = 5) then
                    begin
                         shape18.Brush.Color := clYellow;
                    end


                    else if (jetons[i].X = 4) and (jetons[i].Y = 0) then
                    begin
                         shape7.Brush.Color := clYellow;
                    end else if (jetons[i].X = 4) and (jetons[i].Y = 1) then
                    begin
                         shape8.Brush.Color := clYellow;
                    end else if (jetons[i].X = 4) and (jetons[i].Y = 2) then
                    begin
                         shape9.Brush.Color := clYellow;
                    end else if (jetons[i].X = 4) and (jetons[i].Y = 3) then
                    begin
                         shape10.Brush.Color := clYellow;
                    end else if (jetons[i].X = 4) and (jetons[i].Y = 4) then
                    begin
                         shape11.Brush.Color := clYellow;
                    end else if (jetons[i].X = 4) and (jetons[i].Y = 5) then
                    begin
                         shape12.Brush.Color := clYellow;
                    end


                    else if (jetons[i].X = 5) and (jetons[i].Y = 0) then
                    begin
                        shape1.Brush.Color := clYellow;
                    end else if (jetons[i].X = 5) and (jetons[i].Y = 1) then
                    begin
                        shape2.Brush.Color := clYellow;
                    end else if (jetons[i].X = 5) and (jetons[i].Y = 2) then
                    begin
                        shape3.Brush.Color := clYellow;
                    end else if (jetons[i].X = 5) and (jetons[i].Y = 3) then
                    begin
                        shape4.Brush.Color := clYellow;
                    end else if (jetons[i].X = 5) and (jetons[i].Y = 4) then
                    begin
                        shape5.Brush.Color := clYellow;
                    end else if (jetons[i].X = 5) and (jetons[i].Y = 5) then
                    begin
                        shape6.Brush.Color := clYellow;
                    end;
              end;
                           end;



end;


 procedure TForm13.HorizVerif();
var
  i, j: Integer;
begin
  win := 2;

  for i := 0 to 5 do
  begin

    for j := 0 to 2 do
    begin
      if (tab[i][j] = 1) and (tab[i][j] = tab[i][j+1]) and (tab[i][j+1] = tab[i][j+2]) and (tab[i][j+2] = tab[i][j+3]) then
      begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i;
        jetons[1].Y := j+1;

        jetons[2].X := i;
        jetons[2].Y := j+2;

        jetons[3].X := i;
        jetons[3].Y := j+3;

        win := 1;
        //ShowMessage('Joueur 1 gagne !');
        label10.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;

  for i := 0 to 5 do
  begin

    for j := 0 to 2 do
    begin
      if (tab[i][j] = 0) and (tab[i][j] = tab[i][j+1]) and (tab[i][j+1] = tab[i][j+2]) and (tab[i][j+2] = tab[i][j+3]) then
      begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i;
        jetons[1].Y := j+1;

        jetons[2].X := i;
        jetons[2].Y := j+2;

        jetons[3].X := i;
        jetons[3].Y := j+3;

        win := 0;
        //ShowMessage('Joueur 2 gagne !');
        label11.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;



end;




procedure TForm13.VertiVerif();
var
  i, j: Integer;
begin
  win := 2;

  for i := 0 to 2 do
  begin

    for j := 0 to 5 do
    begin
      if (tab[i][j] = 1) and (tab[i][j] = tab[i+1][j]) and (tab[i+1][j] = tab[i+2][j]) and (tab[i+2][j] = tab[i+3][j]) then
      begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j;

        jetons[2].X := i+2;
        jetons[2].Y := j;

        jetons[3].X := i+3;
        jetons[3].Y := j;

        win := 1;
        //ShowMessage('Joueur 1 gagne !');
        label10.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;

  for i := 0 to 2 do
  begin

    for j := 0 to 5 do
    begin
      if (tab[i][j] = 0) and (tab[i][j] = tab[i+1][j]) and (tab[i+1][j] = tab[i+2][j]) and (tab[i+2][j] = tab[i+3][j]) then
      begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j;

        jetons[2].X := i+2;
        jetons[2].Y := j;

        jetons[3].X := i+3;
        jetons[3].Y := j;

        win := 0;
        //ShowMessage('Joueur 2 gagne !');
        label11.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;



end;



procedure TForm13.DiagVerif();
var
  i, j: integer;
  found: boolean;
begin
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      if (tab[i][j] = 1) and (tab[i+1][j+1] = tab[i][j]) and (tab[i+2][j+2] = tab[i+1][j+1]) and (tab[i+3][j+3] = tab[i+2][j+2]) then
      begin
        found := true;
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j+1;

        jetons[2].X := i+2;
        jetons[2].Y := j+2;

        jetons[3].X := i+3;
        jetons[3].Y := j+3;
        win := 1;
        //ShowMessage('Joueur 1 gagne !');
        label10.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;

  if not found then
  begin
    found := false;


    for i := 0 to 2 do
    begin
      for j := 3 to 5 do
      begin
        if (tab[i][j] = 1) and (tab[i+1][j-1] = tab[i][j]) and (tab[i+2][j-2] = tab[i+1][j-1]) and (tab[i+3][j-3] = tab[i+2][j-2]) then
        begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j-1;

        jetons[2].X := i+2;
        jetons[2].Y := j-2;

        jetons[3].X := i+3;
        jetons[3].Y := j-3;
        win := 1;
        //ShowMessage('Joueur 1 gagne !');
        label10.Caption := '1';
        btnCoul();
          Exit;
        end;
      end;
    end;
  end;


  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      if (tab[i][j] = 0) and (tab[i+1][j+1] = tab[i][j]) and (tab[i+2][j+2] = tab[i+1][j+1]) and (tab[i+3][j+3] = tab[i+2][j+2]) then
      begin
        found := true;
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j+1;

        jetons[2].X := i+2;
        jetons[2].Y := j+2;

        jetons[3].X := i+3;
        jetons[3].Y := j+3;
        win := 0;
        //ShowMessage('Joueur 2 gagne !');
        label11.Caption := '1';
        btnCoul();
        Exit;
      end;
    end;
  end;

  if not found then
  begin
    found := false;
    for i := 0 to 2 do
    begin
      for j := 3 to 5 do
      begin
        if (tab[i][j] = 0) and (tab[i+1][j-1] = tab[i][j]) and (tab[i+2][j-2] = tab[i+1][j-1]) and (tab[i+3][j-3] = tab[i+2][j-2]) then
        begin
        jetons[0].X := i;
        jetons[0].Y := j;

        jetons[1].X := i+1;
        jetons[1].Y := j-1;

        jetons[2].X := i+2;
        jetons[2].Y := j-2;

        jetons[3].X := i+3;
        jetons[3].Y := j-3;
        win := 0;
        //ShowMessage('Joueur 2 gagne !');
        label11.Caption := '1';
        btnCoul();
          Exit;
        end;
      end;
    end;
  end;


end;

procedure TForm13.Button1Click(Sender: TObject);
begin
  a := a+1;
  jw := not jw;
  case a of
   6: begin
     Button1.Enabled := false;
     if jw = false then
      begin
        shape31.Brush.Color := clRed;
        tab[0, 0] := 0;
      end else begin
         shape31.Brush.Color := clBlue;
         tab[0, 0] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape1.Brush.Color := clRed;
        tab[5, 0] := 0;
      end else begin
         shape1.Brush.Color := clBlue;
         tab[5, 0] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape7.Brush.Color := clRed;
        tab[4, 0] := 0;
      end else begin
         shape7.Brush.Color := clBlue;
         tab[4, 0] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape13.Brush.Color := clRed;
        tab[3, 0] := 0;
      end else begin
         shape13.Brush.Color := clBlue;
         tab[3, 0] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape19.Brush.Color := clRed;
        tab[2, 0] := 0;
      end else begin
         shape19.Brush.Color := clBlue;
         tab[2, 0] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape25.Brush.Color := clRed;
        tab[1, 0] := 0;
      end else begin
         shape25.Brush.Color := clBlue;
         tab[1, 0] := 1S;
      end;
   end;
  end;

   HorizVerif();
   VertiVerif();
   DiagVerif();
end;



procedure TForm13.Button2Click(Sender: TObject);
begin
b := b+1;
jw := not jw;
  case b of
   6: begin
     Button2.Enabled := false;
     if jw = false then
      begin
        shape32.Brush.Color := clRed;
        tab[0, 1] := 0;
      end else begin
         shape32.Brush.Color := clBlue;
         tab[0, 1] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape2.Brush.Color := clRed;
        tab[5, 1] := 0;
      end else begin
         shape2.Brush.Color := clBlue;
         tab[5, 1] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape8.Brush.Color := clRed;
        tab[4, 1] := 0;
      end else begin
         shape8.Brush.Color := clBlue;
         tab[4, 1] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape14.Brush.Color := clRed;
        tab[3, 1] := 0;
      end else begin
         shape14.Brush.Color := clBlue;
         tab[3, 1] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape20.Brush.Color := clRed;
        tab[2, 1] := 0;
      end else begin
         shape20.Brush.Color := clBlue;
         tab[2, 1] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape26.Brush.Color := clRed;
        tab[1, 1] := 0;
      end else begin
         shape26.Brush.Color := clBlue;
         tab[1, 1] := 1;
      end;
   end;
  end;
  HorizVerif();
  VertiVerif();
  DiagVerif();
end;


procedure TForm13.Button3Click(Sender: TObject);
begin
   c := c+1;
   jw := not jw;
  case c of
   6: begin
     Button3.Enabled := false;
     if jw = false then
      begin
        shape33.Brush.Color := clRed;
        tab[0, 2] := 0;
      end else begin
         shape33.Brush.Color := clBlue;
         tab[0, 2] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape3.Brush.Color := clRed;
        tab[5, 2] := 0;
      end else begin
         shape3.Brush.Color := clBlue;
         tab[5, 2] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape9.Brush.Color := clRed;
        tab[4, 2] := 0;
      end else begin
         shape9.Brush.Color := clBlue;
         tab[4, 2] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape15.Brush.Color := clRed;
        tab[3, 2] := 0;
      end else begin
         shape15.Brush.Color := clBlue;
         tab[3, 2] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape21.Brush.Color := clRed;
        tab[2, 2] := 0;
      end else begin
         shape21.Brush.Color := clBlue;
         tab[2, 2] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape27.Brush.Color := clRed;
        tab[1, 2] := 0;
      end else begin
         shape27.Brush.Color := clBlue;
         tab[1, 2] := 1;
      end;
   end;
  end;
  HorizVerif();
  VertiVerif();
  DiagVerif();
end;


procedure TForm13.Button4Click(Sender: TObject);
begin
   d := d+1;
   jw := not jw;
  case d of
   6: begin
     Button4.Enabled := false;
     if jw = false then
      begin
        shape34.Brush.Color := clRed;
        tab[0, 3] := 0;
      end else begin
         shape34.Brush.Color := clBlue;
         tab[0, 3] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape4.Brush.Color := clRed;
        tab[5, 3] := 0;
      end else begin
         shape4.Brush.Color := clBlue;
         tab[5, 3] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape10.Brush.Color := clRed;
        tab[4, 3] := 0;
      end else begin
         shape10.Brush.Color := clBlue;
         tab[4, 3] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape16.Brush.Color := clRed;
        tab[3, 3] := 0;
      end else begin
         shape16.Brush.Color := clBlue;
         tab[3, 3] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape22.Brush.Color := clRed;
        tab[2, 3] := 0;
      end else begin
         shape22.Brush.Color := clBlue;
         tab[2, 3] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape28.Brush.Color := clRed;
        tab[1, 3] := 0;
      end else begin
         shape28.Brush.Color := clBlue;
         tab[1, 3] := 1;
      end;
   end;
  end;
  HorizVerif();
  VertiVerif();
  DiagVerif();
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
  e := e+1;
  jw := not jw;
  case e of
   6: begin
     Button5.Enabled := false;
     if jw = false then
      begin
        shape35.Brush.Color := clRed;
        tab[0, 4] := 0;
      end else begin
         shape35.Brush.Color := clBlue;
         tab[0, 4] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape5.Brush.Color := clRed;
        tab[5, 4] := 0;
      end else begin
         shape5.Brush.Color := clBlue;
         tab[5, 4] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape11.Brush.Color := clRed;
        tab[4, 4] := 0;
      end else begin
         shape11.Brush.Color := clBlue;
         tab[4, 4] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape17.Brush.Color := clRed;
        tab[3, 4] := 0;
      end else begin
         shape17.Brush.Color := clBlue;
         tab[3, 4] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape23.Brush.Color := clRed;
        tab[2, 4] := 0;
      end else begin
         shape23.Brush.Color := clBlue;
         tab[2, 4] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape29.Brush.Color := clRed;
        tab[1, 4] := 0;
      end else begin
         shape29.Brush.Color := clBlue;
         tab[1, 4] := 1;
      end;
   end;
  end;
  HorizVerif();
  VertiVerif();
  DiagVerif();
end;

procedure TForm13.Button6Click(Sender: TObject);
begin
    f := f+1;
    jw := not jw;
  case f of
   6: begin
     Button6.Enabled := false;
     if jw = false then
      begin
        shape36.Brush.Color := clRed;
        tab[0, 5] := 0;
      end else begin
         shape36.Brush.Color := clBlue;
         tab[0, 5] := 1;
      end;
   end;
   1: begin
      if jw = false then
      begin
        shape6.Brush.Color := clRed;
        tab[5, 5] := 0;
      end else begin
         shape6.Brush.Color := clBlue;
         tab[5, 5] := 1;
      end;
   end;
   2: begin
      if jw = false then
      begin
        shape12.Brush.Color := clRed;
        tab[4, 5] := 0;
      end else begin
         shape12.Brush.Color := clBlue;
         tab[4, 5] := 1;
      end;
   end;
   3: begin
      if jw = false then
      begin
        shape18.Brush.Color := clRed;
        tab[3, 5] := 0;
      end else begin
         shape18.Brush.Color := clBlue;
         tab[3, 5] := 1;
      end;
   end;
   4: begin
       if jw = false then
      begin
        shape24.Brush.Color := clRed;
        tab[2, 5] := 0;
      end else begin
         shape24.Brush.Color := clBlue;
         tab[2, 5] := 1;
      end;
   end;
   5: begin
       if jw = false then
      begin
        shape30.Brush.Color := clRed;
        tab[1, 5] := 0;
      end else begin
         shape30.Brush.Color := clBlue;
         tab[1, 5] := 1;
      end;
   end;
  end;
  HorizVerif();
  VertiVerif();
  DiagVerif();
end;


begin
for y := 0 to 5 do
  begin
    for z := 0 to 5 do
    begin
      tab[y, z] := 2;
    end;
  end;


end.
