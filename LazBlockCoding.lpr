program LazBlockCoding;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

type

  { TBlockCoding }

  TBlockCoding = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TBlockCoding }

procedure TBlockCoding.DoRun;
var
  ErrorMsg: String;
  magicnumber: Integer;
  magicdildo: Integer;
  myname: String;
begin

     Writeln('Okay... Going to see what I can do with if statements blocked and unblocked... Wooh...');

     Writeln('Enter either a 5 or a ten...');

     Readln(magicnumber);

     Writeln('Hmm....');

     if (magicnumber = 5) or (magicnumber=10) then

     Writeln('It''s a five or a ten!!!')

     else

       Writeln('It IS NOT a five or a ten! Oh noes!');

//That was non blocked code. Wooohhh

       Writeln('If you like a dildo press 1. If you dont press 2. Then press return.');

       Readln(magicdildo);

       if magicdildo = 1 then
       Writeln('Go dildo!')

       else

         if magicdildo = 2 then

         Writeln('Go something else...')

         else

           if magicdildo = 3 then
           Writeln('Umm ok')
           else
             Writeln('Go for something else then!');

       //Done!

       //Next with begin and end statements...

       Writeln('Time to try blocking some code instead this time...');

       Writeln('What is your name, please?');

       Readln(myname);

       if myname = 'Mitchell' then
       begin
         Writeln('Yayyyyy......');
         Writeln('It''s You!');
       end
       else
       begin
         Writeln('It''s not you...');
         Writeln('I''m so sad...');
       end;

       Writeln('It works...');




  Readln;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TBlockCoding.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TBlockCoding.Destroy;
begin
  inherited Destroy;
end;

procedure TBlockCoding.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: TBlockCoding;
begin
  Application:=TBlockCoding.Create(nil);
  Application.Title:='LazBlockCoding';
  Application.Run;
  Application.Free;
end.

