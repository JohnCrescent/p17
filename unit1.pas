unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var r1,r2,R:real;
begin
    r1:=strTOfloat(edit1.text);
    r2:=strTOfloat(edit2.text);
   IF ((radiobutton1.checked=false) and (radiobutton2.checked=false)) then
            showmessage('Označ spôsob zapojenia')
            else
            begin
    if radiobutton1.checked=true then R:=(r1*r2)/(r1+r2);
    if radiobutton2.checked=true then R:=(r1+r2);
    label4.caption:=floattostr(round(R*100)/100);

            end;
end;

end.

