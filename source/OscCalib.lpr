program OscCalib;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  {$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}
  clocale,
  { required on Linux/Unix for formatsettings support. Should be one of the first (probably after cthreads?}
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, mainunit
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

