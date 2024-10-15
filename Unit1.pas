//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TListaGenerica<T> = class
  private
    FItems: array of T;
  public
    procedure Add(Item: T);
    function Get(Index: Integer): T;
    function Count: Integer;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TListaGenerica<T> }

procedure TListaGenerica<T>.Add(Item: T);
begin
  SetLength(FItems, Length(FItems) + 1);
  FItems[High(FItems)] := Item;
end;

function TListaGenerica<T>.Count: Integer;
begin
  Result := Length(FItems);
end;

function TListaGenerica<T>.Get(Index: Integer): T;
begin
  Result := FItems[Index];
end;

{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
var
  ListaDeInteiros: TListaGenerica<Integer>;
  i: Integer;

begin

  ListaDeInteiros := TListaGenerica<Integer>.Create; //Instancia a classe TListaGenerica utilizando o tipo inteiro
  try
    ListaDeInteiros.Add(42);  //adiciona itens do tipo inteiro na lista
    ListaDeInteiros.Add(100);

    //Exibe os itens no memo1
    Memo1.Clear;
    for i := 0 to ListaDeInteiros.Count-1 do
      Memo1.Lines.Add(ListaDeInteiros.Get(i).ToString);

  finally
    ListaDeInteiros.Free; //Libera a ListaDeInteiros da memória
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ListaDeStrings: TListaGenerica<String>;
  i: Integer;
begin

  ListaDeStrings := TListaGenerica<String>.Create;   //Instancia a classe TListaGenerica utilizando o tipo string
  try
    ListaDeStrings.Add('Blog'); //adiciona itens do tipo string na lista
    ListaDeStrings.Add('codedelphi');

    //Exibe os itens no memo1
    Memo2.Clear;
    for i := 0 to ListaDeStrings.Count-1 do
      Memo2.Lines.Add(ListaDeStrings.Get(i));

  finally
    ListaDeStrings.Free; //Libera a ListaDeStrings da memória
  end;

end;

end.
