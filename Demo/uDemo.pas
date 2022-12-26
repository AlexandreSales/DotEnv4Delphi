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
   Memo1.Lines.Add(DotEnv.Env('appdata'));

   //Pegando vari�veis do Ambiente atrav�s de Enumerado
   Memo1.Lines.Add(DotEnv.Env(tenvVar.ALLUSERSPROFILE));

   Memo1.Lines.Add(DotEnv.Env('MeuNome'));
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  //Pegando vari�veis do arquivo .env
  Memo1.Lines.Add(DotEnv.Env('MeuNome', true));
  Memo1.Lines.Add(DotEnv.Env(DB_USERNAME));
end;

end.
