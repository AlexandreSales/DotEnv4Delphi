unit uDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  DotEnv4Delphi;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   //Pegando v�ri�veis do Ambiente diretamente pelo nome(string)
   Memo1.Lines.Add(tdotEnv4Delphi.GetVar('appdata'));

   //Pegando vari�veis do Ambiente atrav�s de Enumerado
   Memo1.Lines.Add(TDotEnv4Delphi.GetVar(tenvVar.ALLUSERSPROFILE));
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  //Pegando vari�veis do arquivo .env
  Memo1.Lines.Add(TDotEnv4Delphi.GetVar('MeuNome', true));
end;

end.
