unit mainunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, ExtCtrls, StdCtrls, Spin,
  ComCtrls, Buttons, SynHighlighterCpp, SynEdit, SynPluginSyncroEdit,
  SynHighlighterAny, Types;

type

  { TMainForm }

  TMainForm = class(TForm)
    AOscFrequSpinEdit: TSpinEdit;
    AOscLabel: TLabel;
    AOSCTypeComboBox: TComboBox;
    AuxImageList: TImageList;
    AuxOscImage: TImage;
    ExitButton: TBitBtn;
    USBSRCERRORLabel: TLabel;
    ROSSLPCheckBox: TCheckBox;
    LPOSCENCheckBox: TCheckBox;
    LPOSCENPanel: TPanel;
    ROICheckBox: TCheckBox;
    ROIPanel: TPanel;
    PLLKENCheckBox: TCheckBox;
    ClkSwComboBox: TComboBox;
    StartUpCheckBox: TCheckBox;
    Osc2PinComboBox: TComboBox;
    StartUpPanel: TPanel;
    SrcGenButton: TBitBtn;
    CpyToCBrdButton: TBitBtn;
    EditEnaCheckBox: TCheckBox;
    SrcStyleComboBox: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    RefClkImageList: TImageList;
    RODIVComboBox: TComboBox;
    RefClkEnaCheckBox: TCheckBox;
    ClearButton: TButton;
    APOSCCLKLabel: TLabel;
    AFRCCLKLabel: TLabel;
    AFVCOLabel: TLabel;
    APLLInLabel: TLabel;
    APLLFPLLILabel: TLabel;
    APLLFAVCOLabel: TLabel;
    APLLPREComboBox: TComboBox;
    APLLDIVComboBox: TComboBox;
    APLLPOSTComboBox: TComboBox;
    DozeComboBox: TComboBox;
    DozeEnaCheckBox: TCheckBox;
    FINLabel: TLabel;
    FREFLabel: TLabel;
    FVCOLabel: TLabel;
    Image1: TImage;
    AuxFullImage: TImage;
    AuxPllImage: TImage;
    RefClkImage: TImage;
    MainImageList: TImageList;
    DozePanel: TPanel;
    RefClkPanel: TPanel;
    PLLDIVSpinEdit: TSpinEdit;
    PLLPOSTComboBox: TComboBox;
    PLLPRESpinEdit: TSpinEdit;
    RefClkCheckBox: TCheckBox;
    AuxTabSheet: TTabSheet;
    SourceSynCppSyn: TSynCppSyn;
    SourceSynEdit: TSynEdit;
    SynAnySyn1: TSynAnySyn;
    SynPluginSyncroEdit1: TSynPluginSyncroEdit;
    TabSheet1: TTabSheet;
    USBCheckBox: TCheckBox;
    USBFrequLabel: TLabel;
    REFCLKFrequLabel: TLabel;
    USBLabel1: TLabel;
    USBLabel2: TLabel;
    USBLabel3: TLabel;
    Button3: TButton;
    DozeImage: TImage;
    Image2: TImage;
    Image3: TImage;
    Label14: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    BugsMemo: TMemo;
    FCYFrequLabel: TLabel;
    FOSCFrequLabel: TLabel;
    FPFrequLabel: TLabel;
    FRCFrequEdit: TEdit;
    FRCDIVComboBox: TComboBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    SOSCFrequLabel: TLabel;
    Label9: TLabel;
    POSCTypeComboBox: TComboBox;
    ColorEdit: TEdit;
    XEdit: TEdit;
    YEdit: TEdit;
    POSCCLKLabel: TLabel;
    PLLFrequLabel: TLabel;
    FVCOFrequLabel: TLabel;
    FRCDIVNFrequLabel: TLabel;
    FRC16FrequLabel: TLabel;
    FRCFrequLabel: TLabel;
    Label7: TLabel;
    MainImage: TImage;
    PageControl: TPageControl;
    POSCFrequSpinEdit: TSpinEdit;
    QuickMsgEdit: TEdit;
    OscTabSheet: TTabSheet;
    PLLTabSheet: TTabSheet;
    FRCTUNSpinEdit: TSpinEdit;
    SOSCFrequSpinEdit: TSpinEdit;
    HelpTabSheet: TTabSheet;
    REFCLKLabel1: TLabel;
    REFCLKLabel2: TLabel;
    REFCLKLabel3: TLabel;
    USBRestartButton: TButton;
    procedure AOSCTypeComboBoxChange(Sender: TObject);
    procedure APLLPOSTComboBoxChange(Sender: TObject);
    procedure AuxOscImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ExitButtonClick(Sender: TObject);
    procedure CpyToCBrdButtonClick(Sender: TObject);
    procedure EditEnaCheckBoxChange(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DozeComboBoxChange(Sender: TObject);
    procedure DozeEnaCheckBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FRCDIVComboBoxChange(Sender: TObject);
    procedure MainImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MainImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FRCTUNSpinEditChange(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure PLLPRESpinEditChange(Sender: TObject);
    procedure PLLTabSheetEnter(Sender: TObject);
    procedure POSCFrequSpinEditChange(Sender: TObject);
    procedure POSCTypeComboBoxChange(Sender: TObject);
    procedure RefClkEnaCheckBoxChange(Sender: TObject);
    procedure RefClkImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RODIVComboBoxChange(Sender: TObject);
    procedure SOSCFrequSpinEditChange(Sender: TObject);
    procedure SrcGenButtonClick(Sender: TObject);
    procedure StartUpCheckBoxChange(Sender: TObject);
    procedure USBCheckBoxChange(Sender: TObject);
    procedure USBRestartButtonClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    const
         {Main oscillator sources}
         SrcPri=1;
         SrcPriPll=2;
         SrcFrc=3;
         SrcFrcDiv=4;
         SrcFrcDivPll=5;
         SrcFrc16=6;
         SrcLprc=7;
         ActiveSourceColor=$4080FF;     //Orange
         ActiveSignalColor=$FF0000;     //clBlue;
{    type
         TPicRange=record
           Xmin:integer;
           Ymin:integer;
           Xmax:integer;
           Ymax:integer;
         end;
}
    type
        TDirections=(Up,Down,Left,Right);
        TArrowStyles=(Long,Short);
        TOscSources=(NONE,POSC,FRC,LPRC,SOSC,FRCDIV,FRC16,POSCPLL,FRCPLL);
        TAOscSources=(ANONE,ASOSC,APOSCCLK,AFRCCLK,AFVCO,ASOSCPLL,APOSCPLL,AFRCPLL);
        TRefClkSources=(RNONE,RPOSCCLK,RFOSC);
    var
      ArrowDirection:TDirections;
      ArrowStyle:TArrowStyles;
      OscSource:TOscSources;
      AOscSource:TAOscSources;
      ROscSource:TRefClkSources;
      SelectedSrc:integer;
      ClickedPixel:double;
      PicX,PicY:integer;
      FOSCFrequency:double;
      PLLInFrequency:double;
      FRefFrequency:double;
      FVcoFrequency:double;
      FPFrequency:double;
      FCyFrequency:double;
      AFInFrequency:double;
      AFPlliFrequency:double;
      AFVcoFrequency:double;
      AInputFrequency:double;
      USBFrequency:double;
      RefClkFrequency:double;


{      const PriOscRange:array[0..1] of TPicRange = ((Xmin:25;Ymin:30;Xmax:185;Ymax:120),
                                                   (Xmin:25;Ymin:30;Xmax:185;Ymax:120));
                                              ));}
    procedure ActivateControls(Sender:TObject);
    procedure ReDraw(Sender:TObject);
    procedure ReCalculate(Sender:TObject);
    procedure DrawJoint(X,Y:integer;Image:TImage);
    procedure DrawArrow(X,Y:integer;Style:TArrowStyles;Direction:TDirections;Image:TImage);
    procedure AReCalculate(Sender:TObject);

  end;

var
  MainForm: TMainForm;

implementation
uses Math;
const
  OscCalibVersion='0.2.0';
  LF=#13;
  Tab='    ';
var
   FPointSeparator, FCommaSeparator: TFormatSettings; {http://wiki.freepascal.org/Multiplatform_Programming_Guide#Locale_differences}

{$R *.lfm}

// We must turn off range checks.
{$RANGECHECKS OFF}

procedure BitmapBeginUpdate(const ABitmap: TBitmap);
var
  LStart, LEnd: PByte;
begin
  if ABitmap.PixelFormat = pf32bit then begin
    ABitmap.BeginUpdate;
    LStart := ABitmap.RawImage.Data;
    LEnd := @LStart[ABitmap.RawImage.DataSize];
    while LStart < LEnd do begin
      Inc(LStart[3]);
      Inc(LStart, 4);
    end;
  end;
end;

procedure BitmapEndUpdate(const ABitmap: TBitmap);
var
  LStart, LEnd: PByte;
begin
  if ABitmap.PixelFormat = pf32bit then begin
    LStart := ABitmap.RawImage.Data;
    LEnd := @LStart[ABitmap.RawImage.DataSize];
    while LStart < LEnd do begin
      Dec(LStart[3]);
      Inc(LStart, 4);
    end;
    ABitmap.EndUpdate;
  end;
end;
{$RANGECHECKS ON}

{http://wiki.freepascal.org/Multiplatform_Programming_Guide#Locale_differences}
// This function works like StrToFloat, but simply tries two possible decimal separator
// This will avoid an exception when the string format doesn't match the locale
function StringToFloat(AStr: string): Double;
begin
  if Pos('.', AStr) > 0 then Result := StrToFloat(AStr, FPointSeparator)
  else Result := StrToFloat(AStr, FCommaSeparator);
end;

function PowerOf2(Exponent:integer):integer;
begin
     result:=1;
     while exponent<>0 do begin
           result:=result*2;
           exponent:=exponent-1;
     end;
     PowerOf2:=result;
end;

{ TMainForm }

{ TODO -cLinux : DozeEnaCheckbox was invisible on the image under linux . Bug? Needed to put onto a panel. }

procedure TMainForm.DrawJoint(X,Y:integer;Image:TImage);
var OrigPenWidth:integer;
begin
     OrigPenWidth:=MainImage.Picture.Bitmap.Canvas.Pen.Width;
     Image.Picture.Bitmap.Canvas.Pen.Width:=1;
     Image.Picture.Bitmap.Canvas.Line(X-1,Y-2,X-1+3,Y-2);
     Image.Picture.Bitmap.Canvas.Line(X-1,Y+2,X-1+3,Y+2);
     Image.Picture.Bitmap.Canvas.Line(X-2,Y-1,X-2+5,Y-1);
     Image.Picture.Bitmap.Canvas.Line(X-2,Y,X-2+5,Y);
     Image.Picture.Bitmap.Canvas.Line(X-2,Y+1,X-2+5,Y+1);
     Image.Picture.Bitmap.Canvas.Pen.Width:=OrigPenWidth;
end;

procedure TMainForm.DrawArrow(X,Y:integer;Style:TArrowStyles;Direction:TDirections;Image:TImage);
var OrigPenWidth:integer;
begin
     OrigPenWidth:=Image.Picture.Bitmap.Canvas.Pen.Width;
     Image.Picture.Bitmap.Canvas.Pen.Width:=1;
     if Direction=Right then begin
       if Style=Long then begin
           Image.Picture.Bitmap.Canvas.Line(X-11,Y-4,X-11,Y+5);
           Image.Picture.Bitmap.Canvas.Line(X-10,Y-3,X-10,Y+4);
           Image.Picture.Bitmap.Canvas.Line(X-9 ,Y-3,X-9 ,Y+4);
           Image.Picture.Bitmap.Canvas.Line(X-8 ,Y-3,X-8 ,Y+4);
           Image.Picture.Bitmap.Canvas.Line(X-7 ,Y-2,X-7 ,Y+3);
           Image.Picture.Bitmap.Canvas.Line(X-6 ,Y-2,X-6 ,Y+3);
           Image.Picture.Bitmap.Canvas.Line(X-5 ,Y-2,X-5 ,Y+3);
           Image.Picture.Bitmap.Canvas.Line(X-4 ,Y-1,X-4 ,Y+2);
           Image.Picture.Bitmap.Canvas.Line(X-3 ,Y-1,X-3 ,Y+2);
           Image.Picture.Bitmap.Canvas.Line(X-2 ,Y-1,X-2 ,Y+2);
       end;
       if Style=Short then begin
           Image.Picture.Bitmap.Canvas.Line(X-7,Y-4,X-7,Y+5);
           Image.Picture.Bitmap.Canvas.Line(X-6,Y-3,X-6,Y+4);
           Image.Picture.Bitmap.Canvas.Line(X-5,Y-3,X-5,Y+4);
           Image.Picture.Bitmap.Canvas.Line(X-4,Y-2,X-4,Y+3);
           Image.Picture.Bitmap.Canvas.Line(X-3,Y-2,X-3,Y+3);
           Image.Picture.Bitmap.Canvas.Line(X-2,Y-1,X-2,Y+2);
           Image.Picture.Bitmap.Canvas.Line(X-2,Y-2,X-2,Y+2);
       end;
     end;
     Image.Picture.Bitmap.Canvas.Pen.Width:=OrigPenWidth;
end;

procedure TMainForm.ReCalculate(Sender: TObject);
begin
     case OscSource of
         POSC:FOSCFrequency:=POSCFrequSpinEdit.Value;
         FRC:FOSCFrequency:=StringToFloat(FRCFrequEdit.Caption);
         LPRC:FOSCFrequency:=32768;
         SOSC:FOSCFrequency:=SOSCFrequSpinEdit.Value;
         FRC16:FOSCFrequency:=StringToFloat(FRCFrequEdit.Caption)/16;
         FRCDIV:FOSCFrequency:=StringToFloat(copy(FRCDIVNFrequLabel.Caption,1,length(FRCDIVNFrequLabel.Caption)-3));
         POSCPLL:begin
          FINLabel.Caption:=POSCCLKLabel.Caption;
          end;
         FRCPLL:begin
          FINLabel.Caption:=FRCDIVNFrequLabel.Caption;
          end;
     end;
     if PLLTabSheet.Enabled then begin
     //if PLLTabSheet.TabVisible then begin
     //if PLLGroupBox.Enabled then begin
       PLLInFrequency:=StringToFloat(copy(FINLabel.Caption,1,length(FINLabel.Caption)-3));
       FRefFrequency:=PLLInFrequency/PLLPRESpinEdit.Value;
       FREFLabel.Caption:=floattostrf(FRefFrequency,ffFixed,8,4)+' Hz';
       FVcoFrequency:=FRefFrequency*PLLDIVSpinEdit.Value;
       FVCOLabel.Caption:=floattostrf(FVcoFrequency,ffFixed,8,4)+' Hz';
       FOSCFrequency:=FVcoFrequency/strtoint(PLLPOSTComboBox.Text);
       FOSCFrequLabel.Caption:=floattostrf(FOSCFrequency,ffFixed,8,4)+' Hz';
         //Check margins
         if FRefFrequency<800000 then begin
            FREFLabel.Font.Color:=clRed;
            if PageControl.ActivePageIndex=1 then QuickMsgEdit.Text:='Reference frequency (Fref) must be higher than 800kHz.';
         end else begin
          FREFLabel.Font.Color:=clGreen;
          //QuickMsgEdit.Clear;
         end;
         if FRefFrequency>8000000 then begin
            FREFLabel.Font.Color:=clRed;
            if PageControl.ActivePageIndex=1 then QuickMsgEdit.Text:='Reference frequency (Fref) must be lower than 8MHz.';
         end else begin
          FREFLabel.Font.Color:=clGreen;
          //QuickMsgEdit.Clear;
         end;
         if FVcoFrequency<120000000 then begin
            FVCOLabel.Font.Color:=clRed;
            if PageControl.ActivePageIndex=1 then QuickMsgEdit.Text:='VCO frequency (Fvco) must be higher than 120MHz.';
         end else
         if FVcoFrequency>340000000 then begin
            FVCOLabel.Font.Color:=clRed;
            if PageControl.ActivePageIndex=1 then QuickMsgEdit.Text:='VCO frequency (Fvco) must be lower than 340MHz.';
         end else begin
          FVCOLabel.Font.Color:=clGreen;
          //QuickMsgEdit.Clear;
         end;
     end;
     FOSCFrequLabel.Caption:=floattostrf(FOSCFrequency,ffFixed,9,4)+' Hz';
     if FOSCFrequency>140000000 then begin
        FOSCFrequLabel.Font.Color:=clRed;
        QuickMsgEdit.Text:='Output frequency (Fosc) must be lower than 140MHz';
     end else
         if FOSCFrequency>120000000 then begin
            FOSCFrequLabel.Font.Color:=$004080FF;
            QuickMsgEdit.Text:='Output frequency (Fosc) must be lower than 120MHz at 125°C.';
            end else begin
                FOSCFrequLabel.Font.Color:=clGreen;
                //QuickMsgEdit.Clear;
                end;
     FPFrequency:=FOSCFrequency/2;
     FPFrequLabel.Caption:=floattostrf(FPFrequency,ffFixed,9,4)+' Hz';
     if DozeEnaCheckBox.Checked then
       FCyFrequency:=FPFrequency/strtoint(DozeComboBox.Text) else
             FCyFrequency:=FPFrequency;
     FCYFrequLabel.Caption:=floattostrf(FCyFrequency,ffFixed,9,4)+' Hz';
     AReCalculate(self); //Recalculate Auxiliary values according the main oscillator settings
     RODIVComboBoxChange(self); //Recalculate Reference Clock Generation
end;

procedure TMainForm.AReCalculate(Sender: TObject);
var AFSYSFrequency:double;
begin
     case AOscSource of
         ASOSC,ASOSCPLL:begin
           AInputFrequency:=AOscFrequSpinEdit.Value;
           end;
         APOSCCLK,APOSCPLL:begin
           AInputFrequency:=POSCFrequSpinEdit.Value;
           APOSCCLKLabel.Caption:=POSCFrequSpinEdit.Text+' Hz';// floattostr(AInputFrequency)+' Hz';
         end;
         AFRCCLK,AFRCPLL:begin
          AInputFrequency:=StringToFloat(FRCFrequEdit.Caption);
          AFRCCLKLabel.Caption:=FRCFrequLabel.Caption;//floattostr(AInputFrequency)+' Hz';
         end;
         AFVCO:begin
          AInputFrequency:=FVcoFrequency;
          AFVCOLabel.Caption:=floattostr(AInputFrequency)+' Hz';
         end;
     end;
     if (AOscSource=ASOSCPLL) or (AOscSource=APOSCPLL) or (AOscSource=AFRCPLL) then begin
       {APLL active}
       APLLInLabel.Caption:=floattostrf(AInputFrequency,ffFixed,8,4)+' Hz';
       AFPLLIFrequency:=AInputFrequency/strtoint(APLLPREComboBox.Text);
       APLLFPLLILabel.Caption:=floattostrf(AFPLLIFrequency,ffFixed,8,4)+' Hz';
       if (AFPLLIFrequency>=3000000) and (AFPLLIFrequency<=5500000) then APLLFPLLILabel.Font.Color:=clGreen
          else begin
            APLLFPLLILabel.Font.Color:=clRed;
            QuickMsgEdit.Text:='AFplli frequency must be between 3MHz and 5.5MHz';
          end;
       AFSYSFrequency:=AFPLLIFrequency*strtoint(APLLDIVComboBox.Text);
       APLLFAVCOLabel.Caption:=floattostrf(AFSYSFrequency,ffFixed,8,4)+' Hz';
       if (AFSYSFrequency>=60000000) and (AFSYSFrequency<=120000000) then APLLFAVCOLabel.Font.Color:=clGreen
          else begin
            APLLFAVCOLabel.Font.Color:=clRed;
            QuickMsgEdit.Text:='AFsys frequency must be between 60MHz and 120MHz';
          end;
       //USBFrequency:=AInputFrequency*(strtoint(APLLDIVComboBox.Text)/(strtoint(APLLPREComboBox.Text)*strtoint(APLLPOSTComboBox.Text)));
       USBFrequency:=AFSYSFrequency/strtoint(APLLPOSTComboBox.Text);
     end else
     if (AOscSource=ASOSC) or (AOscSource=APOSCCLK) or (AOscSource=AFRCCLK) or (AOscSource=AFVCO) then begin
       USBFrequency:=AInputFrequency/strtoint(APLLPOSTComboBox.Text);
     end;
     USBFrequLabel.Caption:=floattostrf(USBFrequency,ffFixed,9,4)+' Hz';
     if USBFrequency=48000000 then USBFrequLabel.Font.Color:=clGreen
        else USBFrequLabel.Font.Color:=clRed;

end;

procedure TMainForm.ReDraw(Sender: TObject);
begin
{Fosc routing}
    {--Source select first--}
    //Check if Primary oscillator clicked
    //if (picX>25) and (picX<185) and (picY>30) and (picY<120) then DrawNo:=1;
    if ((picX>25) and (picX<185) and (picY>15) and (picY<120)) or
       ((picX>205) and (picX<425) and (picY>40) and (picY<65)) then begin
      QuickMsgEdit.Text:='Primary (POSC) oscillator selected';
      PLLTabSheet.Enabled:=false;
      //PLLTabSheet.TabVisible:=false;
      //PLLGroupBox.Enabled:=false;
      ClearButtonClick(self);
      OscSource:=POSC;
      BitmapBeginUpdate(MainImage.Picture.Bitmap);
      try
        with MainImage.Picture.Bitmap do begin
          //Draw a square
          Canvas.Pen.Color := ActiveSourceColor;
          Canvas.Pen.Width:=3;
          Canvas.Line(15,15,186,15);
          Canvas.LineTo(186,117);
          Canvas.LineTo(15,117);
          Canvas.LineTo(15,15);
          //Draw the signal line
          Canvas.Pen.Color := ActiveSignalColor;
          Canvas.Pen.Width:=1;
          Canvas.Line(179,54,431,54);
          DrawJoint(196,54,MainImage);
          DrawArrow(430,54,Long,Right,MainImage);
        end;
      finally
        BitmapEndUpdate(MainImage.Picture.Bitmap);
      end;
    end else
    if ((picX>90) and (picX<180) and (picY>160) and (picY<215)) or
       ((picX>180) and (picX<425) and (picY>295) and (picY<315)) then begin
      //FRC oscillator clicked
      QuickMsgEdit.Text:='Fast RC (FRC) oscillator selected';
      PLLTabSheet.Enabled:=false;
      //PLLTabSheet.TabVisible:=false;
      //PLLGroupBox.Enabled:=false;
      ClearButtonClick(self);
      OscSource:=FRC;
      BitmapBeginUpdate(MainImage.Picture.Bitmap);
      try
        with MainImage.Picture.Bitmap do begin
          //Draw a square
          Canvas.Pen.Color := ActiveSourceColor;
          Canvas.Pen.Width:=3;
          Canvas.Line(99,171,170,171);
          Canvas.LineTo(170,210);
          Canvas.LineTo(99,210);
          Canvas.LineTo(99,171);
          //Draw the signal line
          Canvas.Pen.Color := ActiveSignalColor;
          Canvas.Pen.Width:=1;
          Canvas.Line(171,190,189,190);
          Canvas.Line(189,190,189,310);
          Canvas.Line(189,310,431,310);
          DrawJoint(189,190,MainImage);
          DrawArrow(430,310,Long,Right,MainImage);
        end;
      finally
        BitmapEndUpdate(MainImage.Picture.Bitmap);
      end;
    end else
    if ((picX>85) and (picX<180) and (picY>300) and (picY<355)) or
       ((picX>175) and (picX<425) and (picY>320) and (picY<335)) then begin
      //LPRC oscillator clicked
      QuickMsgEdit.Text:='Low power RC (LPRC) oscillator selected';
      PLLTabSheet.Enabled:=false;
      //PLLTabSheet.TabVisible:=false;
      //PLLGroupBox.Enabled:=false;
      ClearButtonClick(self);
      OscSource:=LPRC;
      BitmapBeginUpdate(MainImage.Picture.Bitmap);
      try
        with MainImage.Picture.Bitmap do begin
          //Draw a square
          Canvas.Pen.Color := ActiveSourceColor;
          Canvas.Pen.Width:=3;
          Canvas.Line(99,306,171,306);
          Canvas.LineTo(171,347);
          Canvas.LineTo(99,347);
          Canvas.LineTo(99,306);
          //Draw the signal line
          Canvas.Pen.Color := ActiveSignalColor;
          Canvas.Pen.Width:=1;
          Canvas.Line(172,327,431,327);
          //DrawJoint(196,54);
          DrawArrow(430,327,Long,Right,MainImage);
        end;
      finally
        BitmapEndUpdate(MainImage.Picture.Bitmap);
      end;
    end else
    if ((picX>10) and (picX<220) and (picY>350) and (picY<465)) or
       ((picX>220) and (picX<425) and (picY>370) and (picY<390)) then begin
      //Secondary oscillator clicked
      QuickMsgEdit.Text:='Secondary (SOSC) oscillator selected';
      PLLTabSheet.Enabled:=false;
      //PLLTabSheet.TabVisible:=false;
      //PLLGroupBox.Enabled:=false;
      ClearButtonClick(self);
      OscSource:=SOSC;
      BitmapBeginUpdate(MainImage.Picture.Bitmap);
      try
        with MainImage.Picture.Bitmap do begin
          //Draw a square
          Canvas.Pen.Color := ActiveSourceColor;
          Canvas.Pen.Width:=3;
          Canvas.Line(10,350,220,350);
          Canvas.LineTo(220,465);
          Canvas.LineTo(10,465);
          Canvas.LineTo(10,350);
          //Draw the signal line
          Canvas.Pen.Color := ActiveSignalColor;
          Canvas.Pen.Width:=1;
          Canvas.Line(183,380,431,380);
          //DrawJoint(196,54);
          DrawArrow(430,380,Long,Right,MainImage);
        end;
      finally
        BitmapEndUpdate(MainImage.Picture.Bitmap);
      end;
    end else
    if (picX>230) and (picX<425) and (picY>260) and (picY<295) then begin
       QuickMsgEdit.Text:='Fast RC (FRC) oscillator selected with FRC16 active';
       PLLTabSheet.Enabled:=false;
       //PLLTabSheet.TabVisible:=false;
       //PLLGroupBox.Enabled:=false;
       ClearButtonClick(self);
       OscSource:=FRC16;
       BitmapBeginUpdate(MainImage.Picture.Bitmap);
       try
           with MainImage.Picture.Bitmap do begin
             //FRC oscillator
             //Draw a square
             Canvas.Pen.Color := ActiveSourceColor;
             Canvas.Pen.Width:=3;
             Canvas.Line(99,171,170,171);
             Canvas.LineTo(170,210);
             Canvas.LineTo(99,210);
             Canvas.LineTo(99,171);
             //Draw the signal line
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(171,190,189,190);
             Canvas.Line(189,190,189,275);
             //FRC16
             Canvas.Pen.Color := ActiveSourceColor;
             Canvas.Pen.Width:=3;
             Canvas.Line(232,262,269,262);
             Canvas.LineTo(269,288);
             Canvas.LineTo(232,288);
             Canvas.LineTo(232,262);

             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(189,275,232,275);
             //DrawJoint(189,275);
             Canvas.Line(189,190,189,275);
             Canvas.Line(270,275,431,275);
             DrawArrow(430,275,Long,Right,MainImage);
           end;
       finally
         BitmapEndUpdate(MainImage.Picture.Bitmap);
       end;
    end else
    if (picX>215) and (picX<425) and (picY>140) and (picY<250) then begin
       QuickMsgEdit.Text:='Fast RC (FRC) oscillator selected with FRCDIV active';
       PLLTabSheet.Enabled:=false;
       //PLLTabSheet.TabVisible:=false;
       //PLLGroupBox.Enabled:=false;
       ClearButtonClick(self);
       OscSource:=FRCDIV;
       BitmapBeginUpdate(MainImage.Picture.Bitmap);
       try
           with MainImage.Picture.Bitmap do begin
             //FRC oscillator
             //Draw a square
             Canvas.Pen.Color := ActiveSourceColor;
             Canvas.Pen.Width:=3;
             Canvas.Line(99,171,170,171);
             Canvas.LineTo(170,210);
             Canvas.LineTo(99,210);
             Canvas.LineTo(99,171);

             //Rectangle
             Canvas.Line(222,145,334,145);
             Canvas.LineTo(334,241);
             Canvas.LineTo(222,241);
             Canvas.LineTo(222,145);
             //Draw the signal line
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;

             Canvas.Line(171,190,238,190);
             //FRCDIV
             DrawJoint(189,190,MainImage);
             Canvas.Line(189,190,238,190);
             DrawArrow(237,190,Long,Right,MainImage);

             Canvas.Line(326,192,431,192);
             DrawArrow(430,192,Long,Right,MainImage);
           end;
       finally
         BitmapEndUpdate(MainImage.Picture.Bitmap);
       end;
    end else begin
//-- Other features --//
        BitmapBeginUpdate(MainImage.Picture.Bitmap);
        try
          //** PLL **
          if (picX>260) and (picX<425) and (picY>65) and (picY<130) then begin
            if OscSource=FRCDIV then begin
              QuickMsgEdit.Text:='Fast RC (FRC) oscillator selected with PLL active';
              OscSource:=FRCPLL;
              PLLTabSheet.Enabled:=true;
              //PLLTabSheet.TabVisible:=true;
              //PLLGroupBox.Enabled:=true;
              end else
            if OscSource=POSC then begin
              QuickMsgEdit.Text:='Primary (POSC) oscillator selected with PLL active';
              OscSource:=POSCPLL;
              PLLTabSheet.Enabled:=true;
              //PLLTabSheet.TabVisible:=true;
              //PLLGroupBox.Enabled:=true;
              end else
              if ((OscSource<>POSCPLL) and (OscSource<>FRCPLL)) then QuickMsgEdit.Text:='Select source first. Either POSC or FRC with FRCDIV';
              PLLFrequLabel.Caption:='Configure on';
              FVCOFrequLabel.Caption:='PLL tab';
             with MainImage.Picture.Bitmap do begin
              if (OscSource=POSCPLL) or (OscSource=FRCPLL) then begin

                //Draw a square
                Canvas.Pen.Color := ActiveSourceColor;
                Canvas.Pen.Width:=3;
                Canvas.Line(263,70,328,70);
                Canvas.LineTo(328,124);
                Canvas.LineTo(263,124);
                Canvas.LineTo(263,70);
                //Draw new lines
                Canvas.Pen.Color := ActiveSignalColor;
                Canvas.Pen.Width:=1;
                Canvas.Line(239,96,262,96);
                DrawArrow(262,96,Long,Right,MainImage);
                Canvas.Line(329,96,431,96);
                DrawArrow(430,96,Long,Right,MainImage);
                Canvas.Line(329,115,415,115);
                DrawArrow(414,115,Long,Right,MainImage);
                end;
              if OscSource=POSCPLL then begin
                //Crear old lines
                Canvas.Pen.Color := clBlack;
                Canvas.Pen.Width:=1;
                Canvas.Line(199,54,431,54);
                DrawArrow(430,54,Long,Right,MainImage);
                Canvas.Line(362,192,431,192);
                DrawArrow(430,192,Long,Right,MainImage);
                //Draw new lines
                Canvas.Pen.Color := ActiveSignalColor;
                Canvas.Line(196,54,196,86);
                Canvas.LineTo(227,86);
                DrawArrow(227,86,Long,Right,MainImage);
              end;
              if OscSource=FRCPLL then begin
                //Clear old lines
                Canvas.Pen.Color := clBlack;
                Canvas.Pen.Width:=1;
                Canvas.Line(359,192,431,192);
                DrawArrow(430,192,Long,Right,MainImage);
                //Draw new lines
                Canvas.Pen.Color := ActiveSignalColor;
                Canvas.Line(359,192,359,135);
                Canvas.LineTo(196,135);
                Canvas.LineTo(196,106);
                Canvas.LineTo(228,106);
                DrawArrow(227,106,Long,Right,MainImage);
              end;
             end;
            end;

        finally
          BitmapEndUpdate(MainImage.Picture.Bitmap);
        end;
    end;
{Reference Clock Generator}
    if RefClkCheckBox.Checked then begin
    end;
end;

procedure TMainForm.ActivateControls(Sender: TObject);
var i:integer;
begin
     for i:=0 to OscTabSheet.ControlCount-1 do begin
      if (OscTabSheet.Controls[i].Tag>0) and (OscTabSheet.Controls[i].Tag<100) then begin
          if (OscSource=POSC) then begin
            if (OscTabSheet.Controls[i].Tag=11) or (OscTabSheet.Controls[i].Tag=12) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            POSCTypeComboBoxChange(self);             //Set Visible property of Osc2PinComboBox
            end;
          if (OscSource=FRC) then begin
            if (OscTabSheet.Controls[i].Tag=21) or (OscTabSheet.Controls[i].Tag=22) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
          if (OscSource=FRCDIV) then begin
            if (OscTabSheet.Controls[i].Tag=21) or (OscTabSheet.Controls[i].Tag=23) or (OscTabSheet.Controls[i].Tag=24) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
          if (OscSource=FRC16) then begin
            if (OscTabSheet.Controls[i].Tag=21) or (OscTabSheet.Controls[i].Tag=25) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
          if (OscSource=POSCPLL) then begin
            if (OscTabSheet.Controls[i].Tag=11) or (OscTabSheet.Controls[i].Tag=41) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
               POSCTypeComboBoxChange(self);             //Set Visible property of Osc2PinComboBox
            end;
          if (OscSource=FRCPLL) then begin
            if (OscTabSheet.Controls[i].Tag=21) or (OscTabSheet.Controls[i].Tag=23) or (OscTabSheet.Controls[i].Tag=41) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
          if (OscSource=LPRC) then begin
            if (OscTabSheet.Controls[i].Tag=31) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
          if (OscSource=SOSC) then begin
            if (OscTabSheet.Controls[i].Tag=51) then
               OscTabSheet.Controls[i].Visible:=true else
                  OscTabSheet.Controls[i].Visible:=false;
            end;
      end;
     end;

     //ReCalculate(self);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
    MainForm.Text:=MainForm.Text+'. Version: '+OscCalibVersion;
    ClearButtonClick(self);
    USBRestartButtonClick(self);
    RefClkImageList.GetBitmap(0,RefClkImage.Picture.Bitmap);
    RefClkEnaCheckBoxChange(self);
    {http://wiki.freepascal.org/Multiplatform_Programming_Guide#Locale_differences}
    // Format settings to convert a string to a float
    FPointSeparator := DefaultFormatSettings;
    FPointSeparator.DecimalSeparator := '.';
    FPointSeparator.ThousandSeparator := '#';// disable the thousand separator
    FCommaSeparator := DefaultFormatSettings;
    FCommaSeparator.DecimalSeparator := ',';
    FCommaSeparator.ThousandSeparator := '#';// disable the thousand separator
end;

procedure TMainForm.FRCDIVComboBoxChange(Sender: TObject);
var Frequ:double;
  y:integer;
begin
     Frequ:=StringToFloat(FRCFrequEdit.Text);
     y:=FRCDIVComboBox.ItemIndex;
     if y<7 then
        Frequ:=Frequ/power(2,y)
        else Frequ:=Frequ/256;
     FRCDIVNFrequLabel.Caption:=floattostrf(Frequ,ffFixed,7,3)+' Hz';
     ReCalculate(self);
end;

procedure TMainForm.ClearButtonClick(Sender: TObject);
var i:integer;
begin
     OscSource:=NONE;
     MainImage.Picture.Clear;
     //MainImage.Picture.LoadFromFile('mainpic.png');
     MainImageList.GetBitmap(0,MainImage.Picture.Bitmap);
     BitmapBeginUpdate(MainImage.Picture.Bitmap);
     { TODO -cPicture Format : Wrong picture format? Without these steps the picture background is grey insted of white. }
     try
        MainImage.Picture.Bitmap.Canvas.Pen.Color:=clWhite;
        MainImage.Picture.Bitmap.Canvas.Line(0,0,1,1);
     finally
       BitmapEndUpdate(MainImage.Picture.Bitmap);
     end;
     DozeEnaCheckBox.Checked:=false;
     RefClkEnaCheckBox.Checked:=false;
     {Set visible property for all controlls if Tag<500. Tag 500 or above will be visible always.}
     for i:=0 to OscTabSheet.ControlCount-1 do
         if OscTabSheet.Controls[i].Tag<500 then OscTabSheet.Controls[i].Visible:=false;
     //Restart Auxiliary oscillator too
     USBRestartButtonClick(self);
end;

procedure TMainForm.AuxOscImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
 procedure Draw01;
 begin
      //Line between ARCSEL and FRCSEL
      AuxOscImage.Picture.Bitmap.Canvas.Line(269,43,323,43);
      DrawArrow(322,43,Short,Right,AuxOscImage);
 end;
 procedure Draw02;
 begin
      //Line between FRCSEL and ENAPLL , no PLL
      AuxOscImage.Picture.Bitmap.Canvas.Line(335,43,358,43);
      AuxOscImage.Picture.Bitmap.Canvas.LineTo(358,64);
      AuxOscImage.Picture.Bitmap.Canvas.LineTo(464,64);
      DrawArrow(463,64,Short,Right,AuxOscImage);
 end;
 procedure Draw03;
 begin
      //Line between ENAPLL and SELACLK
      AuxOscImage.Picture.Bitmap.Canvas.Line(476,43,530,43);
      DrawArrow(529,43,Short,Right,AuxOscImage);
 end;
 procedure Draw04;
 begin
      //Line between SELACLK and APLLPOST
      AuxOscImage.Picture.Bitmap.Canvas.Line(542,44,591,44);
      DrawArrow(590,44,Short,Right,AuxOscImage);
 end;
 procedure Draw05;
 begin
      //Line between APLLPOST and END
      AuxOscImage.Picture.Bitmap.Canvas.Line(629,44,714,44);
      DrawArrow(713,44,Long,Right,AuxOscImage);
 end;
 procedure DrawPLLIn;
 begin
      //Line between ARCSEL and APLL
      AuxOscImage.Picture.Bitmap.Canvas.Line(335,43,380,43);
      DrawArrow(379,43,Short,Right,AuxOscImage);
 end;
 procedure DrawPLLOut;
 begin
      //Line between APLL and ENAPLL
      AuxOscImage.Picture.Bitmap.Canvas.Line(428,44,464,44);
      DrawArrow(463,44,Short,Right,AuxOscImage);
 end;
begin
     if not USBCheckBox.Checked then exit;
    //SOSC
    if (X>75) and (X<190) and (Y>5) and (Y<110) then begin
      USBRestartButtonClick(self);
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
        with AuxOscImage.Picture.Bitmap do begin
         AOscSource:=ASOSC;
         QuickMsgEdit.Text:='Secondary oscillator selected for Auxialiary oscillator';
            //Draw a square
             Canvas.Pen.Color := ActiveSourceColor;
             Canvas.Pen.Width:=3;
             Canvas.Line(105,32,159,32);
             Canvas.LineTo(159,92);
             Canvas.LineTo(105,92);
             Canvas.LineTo(105,32);
             //Lines
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(160,43,194,43);
             Canvas.Line(216,43,257,43);
             DrawArrow(256,43,Short,Right,AuxOscImage);
             Draw01;Draw02;Draw03;Draw04;Draw05;
        end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
      AOSCTypeComboBox.Visible:=true;
      AOscFrequSpinEdit.Visible:=true;
      AOscLabel.Visible:=true;
    end else
    //POSCCLK
    if (X>205) and (X<255) and (Y>10) and (Y<35) then
       if (OscSource<>POSC) and (OscSource<>POSCPLL) then
          QuickMsgEdit.Text:='The Primary oscillator is not the main source. This source is not available.'
       else begin
      USBRestartButtonClick(self);
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
        with AuxOscImage.Picture.Bitmap do begin
         AOscSource:=APOSCCLK;
         QuickMsgEdit.Text:='POSCCLK selected for Auxialiary clok source';
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(220,26,257,26);
             DrawArrow(256,26,Short,Right,AuxOscImage);
             Draw01;Draw02;Draw03;Draw04;Draw05;
        end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
      APOSCCLKLabel.Visible:=true;
    end else
    //FRCCLK
    if (X>275) and (X<321) and (Y>10) and (Y<35) then //begin
       if (OscSource<>FRC) and (OscSource<>FRCDIV) and (OscSource<>FRC16) and (OscSource<>FRCPLL) then
          QuickMsgEdit.Text:='The FRC is not the main source. This source is not available.'
       else begin
      USBRestartButtonClick(self);
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
        with AuxOscImage.Picture.Bitmap do begin
         AOscSource:=AFRCCLK;
         QuickMsgEdit.Text:='FRCCLK selected for Auxialiary clok source';
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(287,26,323,26);
             DrawArrow(322,26,Short,Right,AuxOscImage);
             Draw02;Draw03;Draw04;Draw05;
        end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
      AFRCCLKLabel.Visible:=true;
    end else
    //FVCO
    if (X>480) and (X<528) and (Y>10) and (Y<35) then //begin
       if (OscSource<>POSCPLL) and (OscSource<>FRCPLL) then
          QuickMsgEdit.Text:='Main PLL is not active. This source is not available.'
       else begin
      USBRestartButtonClick(self);
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
        with AuxOscImage.Picture.Bitmap do begin
         AOscSource:=AFVCO;
         QuickMsgEdit.Text:='Fvco selected for Auxialiary clock source.';
             Canvas.Pen.Color := ActiveSignalColor;
             Canvas.Pen.Width:=1;
             Canvas.Line(493,27,530,27);
             DrawArrow(529,27,Short,Right,AuxOscImage);
             Draw04;Draw05;
        end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
      AFVCOLabel.Visible:=true;
    end else
    {** APLL **}
    if (AOscSource=ASOSC) or (AOscSource=APOSCCLK) or (AOscSource=AFRCCLK)then begin
      QuickMsgEdit.Text:='Auxiliary PLL enabled.';
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
          with AuxOscImage.Picture.Bitmap do begin
               //Clear line
               Canvas.Pen.Color := clBlack;
               Draw02;
               //Draw new line
               Canvas.Pen.Color := ActiveSignalColor;
               Canvas.Line(353,43,380,43);
               DrawArrow(379,43,Short,Right,AuxOscImage);
               Canvas.Line(428,44,464,44);
               DrawArrow(463,44,Short,Right,AuxOscImage);
               //Draw square
               Canvas.Pen.Color := ActiveSourceColor;
               Canvas.Line(380,29,427,29);
               Canvas.LineTo(427,58);
               Canvas.LineTo(380,58);
               Canvas.LineTo(380,29);
          end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
      case AOscSource of
          ASOSC:AOscSource:=ASOSCPLL;
          APOSCCLK:AOscSource:=APOSCPLL;
          AFRCCLK:AOscSource:=AFRCPLL;
      end;
      APLLInLabel.Visible:=true;
      APLLFPLLILabel.Visible:=true;
      APLLFAVCOLabel.Visible:=true;
      APLLPREComboBox.Visible:=true;
      APLLDIVComboBox.Visible:=true;
    end else
    if (AOscSource=ASOSCPLL) or (AOscSource=APOSCPLL) or (AOscSource=AFRCPLL) then begin
      QuickMsgEdit.Text:='Auxiliary PLL disabled.';
      BitmapBeginUpdate(AuxOscImage.Picture.Bitmap);
      try
          with AuxOscImage.Picture.Bitmap do begin
               //Clear line
               Canvas.Pen.Color := clBlack;
               Canvas.Line(353,43,380,43);
               DrawArrow(379,43,Short,Right,AuxOscImage);
               Canvas.Line(428,44,464,44);
               DrawArrow(463,44,Short,Right,AuxOscImage);
               //Clear square
               Canvas.Line(380,29,427,29);
               Canvas.LineTo(427,58);
               Canvas.LineTo(380,58);
               Canvas.LineTo(380,29);
               //Draw new line
               Canvas.Pen.Color := ActiveSignalColor;
               Draw02;
           end;
      finally
        BitmapEndUpdate(AuxOscImage.Picture.Bitmap);
      end;
       case AOscSource of
           ASOSCPLL:AOscSource:=ASOSC;
           APOSCPLL:AOscSource:=APOSCCLK;
           AFRCPLL:AOscSource:=AFRCCLK;
       end;
       APLLInLabel.Visible:=false;
       APLLFPLLILabel.Visible:=false;
       APLLFAVCOLabel.Visible:=false;
       APLLPREComboBox.Visible:=false;
       APLLDIVComboBox.Visible:=false;
    end else
    QuickMsgEdit.Text:='Auxiliary PLL cannot be enabled due unavailable source.';
    AReCalculate(self);
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TMainForm.CpyToCBrdButtonClick(Sender: TObject);
begin
     SourceSynEdit.DoCopyToClipboard(SourceSynEdit.Text,'');
end;

procedure TMainForm.EditEnaCheckBoxChange(Sender: TObject);
begin
     SourceSynEdit.ReadOnly:=not EditEnaCheckBox.Checked;
end;

procedure TMainForm.AOSCTypeComboBoxChange(Sender: TObject);
begin
     if AOSCTypeComboBox.ItemIndex=0 then begin
       AOscFrequSpinEdit.MinValue:=3500000;
       AOscFrequSpinEdit.MaxValue:=10000000;
       QuickMsgEdit.Text:='Crystal and ceramic resonators in the range of 3.5 MHz to 10 MHz';
     end else
     if AOSCTypeComboBox.ItemIndex=1 then begin
       AOscFrequSpinEdit.MinValue:=10000000;
       AOscFrequSpinEdit.MaxValue:=40000000;
       QuickMsgEdit.Text:='Crystals in the range of 10 MHz to 40 MHz.';
     end else
     if AOSCTypeComboBox.ItemIndex=2 then begin
       AOscFrequSpinEdit.MinValue:=0;
       AOscFrequSpinEdit.MaxValue:=60000000;
       QuickMsgEdit.Text:=' External clock signal up to 60 MHz. ';
     end;
end;

procedure TMainForm.APLLPOSTComboBoxChange(Sender: TObject);
begin
     AReCalculate(self);
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
     BitmapBeginUpdate(MainImage.Picture.Bitmap);
      try
        with MainImage.Picture.Bitmap do begin
          Canvas.Pen.Color := clRed;
          Canvas.Pen.Width:=3;
          Canvas.Line(180,54,431,54);
          //Canvas.Pen.Color := clWhite;
          //Canvas.Brush.Color := clRed;
          //Canvas.Ellipse(50, 50, 400, 400);
          //Canvas.Font.Quality := fqNonAntialiased;
          //Canvas.Font.Color := clBlue;
          //Canvas.Font.Height := 40;
          //Canvas.Brush.Style := bsClear;
          //Canvas.TextOut(0, 0, 'Hello There');
        end;
      finally
        BitmapEndUpdate(MainImage.Picture.Bitmap);
      end;
     //MainImage.Picture.Bitmap.Canvas.Pen.Width:=3;
     //MainImage.Picture.Bitmap.Canvas.Pen.Color:=clRed;
     //MainImage.Picture.Bitmap.Canvas.Pen.Style:=psSolid;
     //MainImage.Picture.Bitmap.Canvas.FillRect(180,52,430,56);

end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
     MainImage.Picture.SaveToFile('test.png');
end;

procedure TMainForm.DozeComboBoxChange(Sender: TObject);
begin
     ReCalculate(self);
end;

procedure TMainForm.DozeEnaCheckBoxChange(Sender: TObject);
begin
{     if DozeEnaCheckBox.Checked then begin
       DozeImage.Visible:=true;
       DozeComboBox.Visible:=true;
     end else begin
      DozeImage.Visible:=false;
      DozeComboBox.Visible:=false;
     end;}
     DozeImage.Visible:=DozeEnaCheckBox.Checked;
     DozeComboBox.Visible:=DozeEnaCheckBox.Checked;
     ROIPanel.Visible:=DozeEnaCheckBox.Checked;
     ReCalculate(self);
end;

procedure TMainForm.MainImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     ClickedPixel:=Y*MainImage.Width+X;
     PicX:=X;
     PicY:=Y;
     ReDraw(self);
     ActivateControls(self);
     ReCalculate(self);
     if OscSource<>NONE then begin
       DozePanel.Visible:=true;
       RefClkPanel.Visible:=true;
       StartUpPanel.Visible:=true;
       ClkSwComboBox.Visible:=true;
     end else begin
         DozePanel.Visible:=false;
         RefClkPanel.Visible:=false;
         StartUpPanel.Visible:=false;
         ClkSwComboBox.Visible:=false;
     end;
     if (OscSource<>SOSC) then LPOSCENPanel.Visible:=true
        else LPOSCENPanel.Visible:=false;
     if (OscSource=SOSC) then begin
       USBSRCERRORLabel.Visible:=true;
       USBCheckBox.Visible:=false;
       USBCheckBox.Checked:=false;
     end else begin
         USBSRCERRORLabel.Visible:=false;
         USBCheckBox.Visible:=true;
     end;
end;

procedure TMainForm.MainImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     XEdit.Text:=inttostr(X);
     YEdit.Text:=inttostr(Y);
     ColorEdit.Text:=inttohex(MainImage.Canvas.Pixels[X,Y],6);
end;

procedure TMainForm.FRCTUNSpinEditChange(Sender: TObject);
begin
     FRCFrequEdit.Text:=floattostrf(7370000+(FRCTUNSpinEdit.Value*27637.5),ffFixed,7,1);
     FRCFrequLabel.Caption:=FRCFrequEdit.Text;
     FRC16FrequLabel.Caption:=floattostrf((7370000+(FRCTUNSpinEdit.Value*27637.5))/16,ffFixed,6,4)+' Hz';
     FRCDIVComboBoxChange(self);
     ReCalculate(self);
end;

procedure TMainForm.PageControlChange(Sender: TObject);
begin
     if PageControl.PageIndex=1 then begin
       PLLPRESpinEditChange(self);
     end;
     if PageControl.PageIndex=2 then begin
       AReCalculate(self);
     end;

end;

procedure TMainForm.PLLPRESpinEditChange(Sender: TObject);
begin
     ReCalculate(self);
end;

procedure TMainForm.PLLTabSheetEnter(Sender: TObject);
begin
     PLLPRESpinEditChange(self);
end;

procedure TMainForm.POSCFrequSpinEditChange(Sender: TObject);
begin
     POSCCLKLabel.Caption:=inttostr(POSCFrequSpinEdit.Value)+' Hz';
     ReCalculate(self);
end;

procedure TMainForm.POSCTypeComboBoxChange(Sender: TObject);
begin
     if POSCTypeComboBox.ItemIndex=0 then begin
       POscFrequSpinEdit.MinValue:=3500000;
       POscFrequSpinEdit.MaxValue:=10000000;
       QuickMsgEdit.Text:='Crystal and ceramic resonators in the range of 3.5 MHz to 10 MHz';
       Osc2PinComboBox.Visible:=false;
     end else
     if POSCTypeComboBox.ItemIndex=1 then begin
       POscFrequSpinEdit.MinValue:=10000000;
       POscFrequSpinEdit.MaxValue:=40000000;
       QuickMsgEdit.Text:='Crystals in the range of 10 MHz to 40 MHz.';
       Osc2PinComboBox.Visible:=false;
     end else
     if POSCTypeComboBox.ItemIndex=2 then begin
       POscFrequSpinEdit.MinValue:=0;
       POscFrequSpinEdit.MaxValue:=60000000;
       QuickMsgEdit.Text:=' External clock signal up to 60 MHz. ';
       Osc2PinComboBox.Visible:=true;
     end;

end;

procedure TMainForm.RefClkEnaCheckBoxChange(Sender: TObject);
begin
     RefClkImage.Visible:=RefClkEnaCheckBox.Checked;
     REFCLKLabel1.Visible:=RefClkEnaCheckBox.Checked;
     REFCLKLabel2.Visible:=RefClkEnaCheckBox.Checked;
     REFCLKLabel3.Visible:=RefClkEnaCheckBox.Checked;
     REFCLKFrequLabel.Visible:=RefClkEnaCheckBox.Checked;
     RODIVComboBox.Visible:=RefClkEnaCheckBox.Checked;
     RODIVComboBox.Enabled:=false;
     //RefClkImageList.GetBitmap(0,RefClkImage.Picture.Bitmap);
     if not RefClkEnaCheckBox.Checked then begin
       ROscSource:=RNONE;
     end;
end;

procedure TMainForm.RefClkImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  procedure DrawPath;
  begin
       Canvas.Line(81,43,113,43);
       DrawArrow(112,43,Long,Right,RefClkImage);
       Canvas.Line(151,43,215,43);
       DrawArrow(214,43,Long,Right,RefClkImage);
  end;
begin
     RefClkImageList.GetBitmap(0,RefClkImage.Picture.Bitmap);
     RODIVComboBox.Enabled:=false;
     if (X>3) and (X<67) and (Y>4) and (Y<41) then begin
        if (OscSource<>POSCPLL) and (OscSource<>POSC) then
           QuickMsgEdit.Text:='The Primary oscillator is not the main source. This source is not available.'
        else begin
        RefClkEnaCheckBoxChange(self);
        RODIVComboBox.Enabled:=true;
       BitmapBeginUpdate(RefClkImage.Picture.Bitmap);
       ROscSource:=RPOSCCLK;
       try
         with RefClkImage.Picture.Bitmap do begin
          AOscSource:=AFVCO;
          QuickMsgEdit.Text:='POSCCLK selected for source of Reference Clock Generator.';
              Canvas.Pen.Color := ActiveSignalColor;
              Canvas.Pen.Width:=1;
              Canvas.Line(30,28,69,28);
              DrawArrow(68,28,Long,Right,RefClkImage);
              DrawPath;
         end;
       finally
         BitmapEndUpdate(RefClkImage.Picture.Bitmap);
       end;
     end;
     end else
     if (X>3) and (X<67) and (Y>42) and (Y<72) then begin
        RefClkEnaCheckBoxChange(self);
        RODIVComboBox.Enabled:=true;
       BitmapBeginUpdate(RefClkImage.Picture.Bitmap);
       ROscSource:=RFOSC;
       try
         with RefClkImage.Picture.Bitmap do begin
          AOscSource:=AFVCO;
          QuickMsgEdit.Text:='Fvco selected for source of Reference Clock Generator.';
              Canvas.Pen.Color := ActiveSignalColor;
              Canvas.Pen.Width:=1;
              Canvas.Line(30,59,69,59);
              DrawArrow(68,59,Long,Right,RefClkImage);
              DrawPath;
         end;
       finally
         BitmapEndUpdate(RefClkImage.Picture.Bitmap);
       end;
     end;
     RODIVComboBoxChange(self);
end;

procedure TMainForm.RODIVComboBoxChange(Sender: TObject);
begin
     if ROscSource=RPOSCCLK then
        RefClkFrequency:=POSCFrequSpinEdit.Value/strtoint(RODIVComboBox.Text);
     if ROscSource=RFOSC then
        RefClkFrequency:=FOscFrequency/strtoint(RODIVComboBox.Text);
     REFCLKFrequLabel.Caption:=floattostrf(RefClkFrequency,ffFixed,8,4)+' Hz';
end;

procedure TMainForm.SOSCFrequSpinEditChange(Sender: TObject);
begin
     SOSCFrequLabel.Caption:=inttostr(SOSCFrequSpinEdit.Value)+' Hz';
     ReCalculate(self);
end;

procedure TMainForm.SrcGenButtonClick(Sender: TObject);
var IntResult:integer;
begin
     SourceSynEdit.Clear;
     //RichMemo.Clear;
     //General notes
     {InsertColorStyledText(RichMemo,'/***********************************************************/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/***********************************************************/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/* Source generated with OscCalib                          */'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/* OscCalib version: '+OscCalibVersion+'                                 */'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/* Author: Peter Kovacs - petitech.tk - petitech@gmail.com */'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/***********************************************************/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/**/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/**/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/**/'+#13,clGray,[]);
     InsertColorStyledText(RichMemo,'/**/'+#13,clGray,[]);}

     SourceSynEdit.Lines.Add('/***********************************************************/');
     SourceSynEdit.Lines.Add('/* Source generated with OscCalib                          */');
     SourceSynEdit.Lines.Add('/* OscCalib version: '+OscCalibVersion+'                                 */');
     SourceSynEdit.Lines.Add('/* Author: Peter Kovacs - petitech.tk - petitech@gmail.com */');
     SourceSynEdit.Lines.Add('/***********************************************************/');
     {pragma settings}
     //Common settings
     SourceSynEdit.Lines.Add('// FOSC');
     if POSCTypeComboBox.ItemIndex=0 then begin
        SourceSynEdit.Lines.Add('#pragma config POSCMD = XT              // Primary Oscillator Mode Select bits (XT Crystal Oscillator Mode)');
        {InsertColorStyledText(RichMemo,'#pragma',clGreen,[]);
        InsertColorStyledText(RichMemo,' config POSCMD = XT              ',clBlack,[]);
        InsertColorStyledText(RichMemo,'// Primary Oscillator Mode Select bits (XT Crystal Oscillator Mode)'+LF,clGray,[]);}
         end else
     if POSCTypeComboBox.ItemIndex=1 then
        SourceSynEdit.Lines.Add('#pragma config POSCMD = HS              // Primary Oscillator Mode Select bits->HS Crystal Oscillator Mode')
        else
     if POSCTypeComboBox.ItemIndex=2 then
        SourceSynEdit.Lines.Add('#pragma config POSCMD = EC              // Primary Oscillator Mode Select bits (EC (External Clock) Mode)');
     if Osc2PinComboBox.ItemIndex=0 then
        SourceSynEdit.Lines.Add('#pragma config OSCIOFNC = ON            // OSC2 Pin Function bit (OSC2 is general purpose digital I/O pin)')
        else
        SourceSynEdit.Lines.Add('#pragma config OSCIOFNC = OFF           // OSC2 Pin Function bit (OSC2 is clock output)');
     case ClkSwComboBox.ItemIndex of
         0:SourceSynEdit.Lines.Add('#pragma config FCKSM = CSDCMD           // Clock Switching Mode bits (Both Clock switching and Fail-safe Clock Monitor are disabled)');
         1:SourceSynEdit.Lines.Add('#pragma config FCKSM = CSECMD           // Clock Switching Mode bits (Clock switching is enabled,Fail-safe Clock Monitor is disabled)');
         2:SourceSynEdit.Lines.Add('#pragma config FCKSM = CSECME           // Clock Switching Mode bits (Both Clock switching and Fail-safe Clock Monitor are enabled)');
     end;
     SourceSynEdit.Lines.Add('// FOSCSEL');
     //Get source
     case OscSource of
         POSC:   SourceSynEdit.Lines.Add('#pragma config FNOSC = PRI              // Oscillator Source Selection (Primary Oscillator (XT, HS, EC))');
         POSCPLL:SourceSynEdit.Lines.Add('#pragma config FNOSC = PRIPLL           // Oscillator Source Selection (Primary Oscillator with PLL module (XT + PLL, HS + PLL, EC + PLL))');
         FRC:    SourceSynEdit.Lines.Add('#pragma config FNOSC = FRC              // Oscillator Source Selection (Internal Fast RC (FRC))');
         FRC16:  SourceSynEdit.Lines.Add('#pragma config FNOSC = FRCDIV16         // Initial Oscillator Source Selection bits (Internal Fast RC (FRC) Oscillator with divide-by-16)');
         FRCDIV: SourceSynEdit.Lines.Add('#pragma config FNOSC = FRCDIVN          // Oscillator Source Selection (Internal Fast RC (FRC) Oscillator with postscaler)');
         FRCPLL: SourceSynEdit.Lines.Add('#pragma config FNOSC = FRCPLL           // Oscillator Source Selection (Fast RC Oscillator with divide-by-N with PLL module (FRCPLL))');
         LPRC:   SourceSynEdit.Lines.Add('#pragma config FNOSC = LPRC             // Oscillator Source Selection (Low-Power RC Oscillator (LPRC))');
         SOSC:   SourceSynEdit.Lines.Add('#pragma config FNOSC = SOSC             // Initial Oscillator Source Selection bits (Secondary Oscillator (SOSC))');
     end;
     if StartUpCheckBox.Checked then
        SourceSynEdit.Lines.Add('#pragma config IESO = ON                // Two-speed Oscillator Start-up Enable bit (Start up device with FRC, then switch to user-selected oscillator source)')
        else
        SourceSynEdit.Lines.Add('#pragma config IESO = OFF               // Two-speed Oscillator Start-up Enable bit (Start up with user-selected oscillator source)');
     if PLLKENCheckBox.Checked then
        SourceSynEdit.Lines.Add('#pragma config PLLKEN = ON              // PLL Lock Wait Enable bit (Clock switch to PLL source will wait until the PLL lock signal is valid.)')
        else
        SourceSynEdit.Lines.Add('#pragma config PLLKEN = OFF             // PLL Lock Wait Enable bit (Clock switch will not wait for the PLL lock signal.)');
     SourceSynEdit.Lines.Add('');
     SourceSynEdit.Lines.Add('#define _XTAL_FREQ  '+floattostrf(FOSCFrequency,ffFixed,9,0)+'UL');
     SourceSynEdit.Lines.Add('');
     SourceSynEdit.Lines.Add('void OSCILLATOR_Initialize(void)');
     SourceSynEdit.Lines.Add('{');
     if (OscSource=FRC) or (OscSource=FRCDIV) or (OscSource=FRC16) or (OscSource=FRCPLL) then begin
       SourceSynEdit.Lines.Add(Tab+'// Configure FRC tuning value');
       if FRCTUNSpinEdit.Value>=0 then IntResult:=FRCTUNSpinEdit.Value
          else IntResult:=64-(FRCTUNSpinEdit.Value*-1);
        SourceSynEdit.Lines.Add(Tab+'OSCTUN = 0x'+inttohex(IntResult,4)+';');
       end;
     if (OscSource=FRCDIV) or (OscSource=FRCPLL) then begin
       SourceSynEdit.Lines.Add(Tab+'// Configure FRC divider');
       case SrcStyleComboBox.ItemIndex of
           0://PLIB style
             SourceSynEdit.Lines.Add(Tab+'_FRCDIV = 0x'+inttohex(FRCDIVComboBox.ItemIndex,2)+';');
           2://Verbose style
             SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.FRCDIV = 0x'+inttohex(FRCDIVComboBox.ItemIndex,2)+';');
           end;
       end;
     if (OscSource=POSCPLL) or (OscSource=FRCPLL) then begin
       SourceSynEdit.Lines.Add(Tab+'// Configure PLL divisor');
       SourceSynEdit.Lines.Add(Tab+'PLLFBD = 0x'+inttohex(PLLDIVSpinEdit.Value,2)+';');
       case SrcStyleComboBox.ItemIndex of
           0:begin //PLIB style
                  SourceSynEdit.Lines.Add(Tab+'// Configure PLL postscaler');
                  SourceSynEdit.Lines.Add(Tab+'_PLLPOST = 0x'+inttohex(PowerOf2(PLLPOSTComboBox.ItemIndex+1),2)+';');
                  SourceSynEdit.Lines.Add(Tab+'// Configure PLL prescaler');
                  SourceSynEdit.Lines.Add(Tab+'_PLLPRE = 0x'+inttohex(PLLPRESpinEdit.Value,2)+';');
           end;
           1:begin //Compact style
                  SourceSynEdit.Lines.Add(Tab+'// Configure PLL prescaler, PLL postscaler, Doze, FRCDIV');
                  //Calculate CLKDIV value
                  IntResult:=0;
                  if DozeEnaCheckBox.Checked then begin
                    IntResult:=DozeComboBox.ItemIndex shl 12;                         //Doze divider
                    IntResult:=IntResult+$0800;                                            //DOZEEN
                    if ROICheckBox.Checked then IntResult:=IntResult+$8000;                //ROI
                    end;
                  IntResult:=IntResult+(FRCDIVComboBox.ItemIndex shl 8);              //FRCDIV
                  IntResult:=IntResult+(PowerOf2(PLLPOSTComboBox.ItemIndex+1) shl 6);      //PLLPOST
                  IntResult:=IntResult+PLLPRESpinEdit.Value;                               //PLLPOST
                  SourceSynEdit.Lines.Add(Tab+'CLKDIV = 0x'+inttohex(IntResult,4)+';');
           end;
           2:begin //Verbose style
                  SourceSynEdit.Lines.Add(Tab+'// Configure PLL postscaler');
                  SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.PLLPOST = 0x'+inttohex(PowerOf2(PLLPOSTComboBox.ItemIndex+1),2)+';');
                  SourceSynEdit.Lines.Add(Tab+'// Configure PLL prescaler');
                  SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.PLLPRE = 0x'+inttohex(PLLPRESpinEdit.Value,2)+';');
           end;
       end;
     end;
     if DozeEnaCheckBox.Checked and
        ((OscSource=POSCPLL) and (SrcStyleComboBox.ItemIndex<>1)) or
        ((OscSource=FRCPLL) and (SrcStyleComboBox.ItemIndex<>1)) then begin
         SourceSynEdit.Lines.Add(Tab+'// Configure DOZE');
         case SrcStyleComboBox.ItemIndex of
           0:begin //PLIB style
                    if ROICheckBox.Checked then SourceSynEdit.Lines.Add(Tab+'_ROI = 0x01'+';')
                       else SourceSynEdit.Lines.Add(Tab+'_ROI = 0x00'+';');
                    SourceSynEdit.Lines.Add(Tab+'_DOZEN = 0x01'+';');
                    SourceSynEdit.Lines.Add(Tab+'_DOZE = 0x'+inttohex(DOZEComboBox.ItemIndex,2)+';')
           end;
           2:begin //Verbose style
                    if ROICheckBox.Checked then SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.ROI = 0x01'+';')
                       else SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.ROI = 0x00'+';');
                    SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.DOZEN = 0x01'+';');
                    SourceSynEdit.Lines.Add(Tab+'CLKDIVbits.DOZE = 0x'+inttohex(DOZEComboBox.ItemIndex,2)+';')
           end;
         end;
     end;
     SourceSynEdit.Lines.Add('    // Request main oscillator source');
     case OscSource of
         POSC:IntResult:=2;
         POSCPLL:IntResult:=3;
         FRC:IntResult:=0;
         FRC16:IntResult:=6;
         FRCDIV:IntResult:=7;
         FRCPLL:IntResult:=1;
         SOSC:IntResult:=4;
         LPRC:IntResult:=5;
          end;
     SourceSynEdit.Lines.Add('    __builtin_write_OSCCONH(0x'+inttohex(IntResult,2)+');');
     if LPOSCENCheckBox.Checked then SourceSynEdit.Lines.Add('    __builtin_write_OSCCONL(OSCCON | 0x03);')
        else SourceSynEdit.Lines.Add('    __builtin_write_OSCCONL(OSCCON | 0x01);');
     SourceSynEdit.Lines.Add(Tab+'// Wait for Clock switch to occur');
     case SrcStyleComboBox.ItemIndex of
         0,1:SourceSynEdit.Lines.Add(Tab+'while (_COSC != 0x'+inttohex(IntResult,2)+');');
         2:SourceSynEdit.Lines.Add(Tab+'while (OSCCONbits.COSC != 0x'+inttohex(IntResult,2)+');');
     end;
     if PLLKENCheckBox.Checked and ((OscSource=POSCPLL) or (OscSource=FRCPLL)) then begin
        SourceSynEdit.Lines.Add(Tab+'// Wait for PLL to lock');
        case SrcStyleComboBox.ItemIndex of
            0,1:SourceSynEdit.Lines.Add(Tab+'while (_LOCK != 0x01);');
            2:SourceSynEdit.Lines.Add(Tab+'while (OSCCONbits.LOCK != 0x01);');
        end;
        end;
     if (RefClkEnaCheckBox.Enabled) and (ROscSource<>RNONE) then begin
        SourceSynEdit.Lines.Add(Tab+'// Reference clock output');
        case SrcStyleComboBox.ItemIndex of
            0:begin //PLIB style
                   SourceSynEdit.Lines.Add(Tab+'_ROON = 0x01;');
                   if ROSSLPCheckBox.Checked then SourceSynEdit.Lines.Add(Tab+'_ROSSLP = 0x01;')
                      else SourceSynEdit.Lines.Add(Tab+'_ROSSLP = 0x00;');
                   if ROscSource=RPOSCCLK then SourceSynEdit.Lines.Add(Tab+'_ROSEL = 0x01;')
                      else SourceSynEdit.Lines.Add(Tab+'_ROSEL = 0x00;');
                   SourceSynEdit.Lines.Add(Tab+'_RODIV = 0x'+inttohex(RODIVComboBox.ItemIndex,2)+';');
            end;
            1:begin //Compact style
                   IntResult:=$8000;
                   if ROSSLPCheckBox.Checked then IntResult:=IntResult+$2000;
                   if ROscSource=RPOSCCLK then IntResult:=IntResult+$1000;
                   IntResult:=IntResult+(RODIVComboBox.ItemIndex shl 8);
                   SourceSynEdit.Lines.Add(Tab+'REFOCON = 0x'+inttohex(IntResult,4)+';');
            end;
            2:begin //Verbose style
                   SourceSynEdit.Lines.Add(Tab+'REFOCONbits.ROON = 0x01;');
                   if ROSSLPCheckBox.Checked then SourceSynEdit.Lines.Add(Tab+'REFOCONbits.ROSSLP = 0x00;');
                   if ROscSource=RPOSCCLK then SourceSynEdit.Lines.Add(Tab+'REFOCONbits.ROSEL = 0x01;')
                      else SourceSynEdit.Lines.Add(Tab+'REFOCONbits.ROSEL = 0x00;');
                   SourceSynEdit.Lines.Add(Tab+'REFOCONbits.RODIV = 0x'+inttohex(RODIVComboBox.ItemIndex,2)+';');
            end;
        end;
     end;

     if USBCheckBox.Checked then begin
        SourceSynEdit.Lines.Add(tab+'// Auxiliary oscillator configuration');
        case SrcStyleComboBox.ItemIndex of
            0:begin //PLIB style
                   if (AOscSource=APOSCPLL) or (AOscSource=AFRCPLL) or (AOscSource=ASOSCPLL) then
                      SourceSynEdit.Lines.Add(Tab+'_ENAPLL = 0x01;');
                   if (AOscSource<>AFVCO) then SourceSynEdit.Lines.Add(Tab+'_SELACLK = 0x01;');
                   case AOSCTypeComboBox.ItemIndex of
                       0:SourceSynEdit.Lines.Add(Tab+'_AOSCMD = 0x02;'+Tab+Tab+'// XT');
                       1:SourceSynEdit.Lines.Add(Tab+'_AOSCMD = 0x01;'+Tab+Tab+'// HS');
                       2:SourceSynEdit.Lines.Add(Tab+'_AOSCMD = 0x03;'+Tab+Tab+'// EC');
                       end;
                   if AOscSource=APOSCCLK then SourceSynEdit.Lines.Add(Tab+'_ASRCSEL = 0x01;');
                   if AOscSource=AFRCCLK then SourceSynEdit.Lines.Add(Tab+'_FRCSEL = 0x01;');
                   SourceSynEdit.Lines.Add(Tab+'_APLLPOST = 0x'+inttohex(7-APLLPOSTComboBox.ItemIndex,2)+';');
                   SourceSynEdit.Lines.Add(Tab+'_APLLPRE = 0x'+inttohex(APLLPREComboBox.ItemIndex,2)+';');
                   SourceSynEdit.Lines.Add(Tab+'_APLLDIV = 0x'+inttohex(APLLDIVComboBox.ItemIndex,2)+';');
            end;
            1:begin //Compact style
                   if (AOscSource=APOSCPLL) or (AOscSource=AFRCPLL) or (AOscSource=ASOSCPLL) then IntResult:=$8000
                      else IntResult:=0;
                   if (AOscSource<>AFVCO) then IntResult:=IntResult+$2000;
                   case AOSCTypeComboBox.ItemIndex of
                       0:IntResult:=IntResult+$1000;
                       1:IntResult:=IntResult+$0800;
                       2:IntResult:=IntResult+$1800;
                       end;
                   if AOscSource=APOSCCLK then IntResult:=IntResult+$0400;
                   if AOscSource=AFRCCLK then IntResult:=IntResult+$0200;
                   IntResult:=IntResult+((7-APLLPOSTComboBox.ItemIndex) shl 5);
                   IntResult:=IntResult+APLLPREComboBox.ItemIndex;
                   SourceSynEdit.Lines.Add(Tab+'ACLKCON3 = 0x'+inttohex(IntResult,4)+';');
                   SourceSynEdit.Lines.Add(Tab+'ACLKDIV3 = 0x'+inttohex(APLLDIVComboBox.ItemIndex,4)+';');
            end;
            2:begin //Verbose style
                   if (AOscSource=APOSCPLL) or (AOscSource=AFRCPLL) or (AOscSource=ASOSCPLL) then
                      SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.ENAPLL = 0x01;');
                   if (AOscSource<>AFVCO) then SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.SELACLK = 0x01;');
                   case AOSCTypeComboBox.ItemIndex of
                       0:SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.AOSCMD = 0x02;'+Tab+Tab+'// XT');
                       1:SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.AOSCMD = 0x01;'+Tab+Tab+'// HS');
                       2:SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.AOSCMD = 0x03;'+Tab+Tab+'// EC');
                       end;
                   if AOscSource=APOSCCLK then SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.ASRCSEL = 0x01;');
                   if AOscSource=AFRCCLK then SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.FRCSEL = 0x01;');
                   SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.APLLPOST = 0x'+inttohex(7-APLLPOSTComboBox.ItemIndex,2)+';');
                   SourceSynEdit.Lines.Add(Tab+'ACLKCON3bits.APLLPRE = 0x'+inttohex(APLLPREComboBox.ItemIndex,2)+';');
                   SourceSynEdit.Lines.Add(Tab+'ACLKDIV3bits.APLLDIV = 0x'+inttohex(APLLDIVComboBox.ItemIndex,2)+';');
            end;
        end;
       end;
     SourceSynEdit.Lines.Add('}');
end;

procedure TMainForm.StartUpCheckBoxChange(Sender: TObject);
begin
     if StartUpCheckBox.Checked and (ClkSwComboBox.ItemIndex>0) then
        PLLKENCheckBox.Enabled:=true else
        PLLKENCheckBox.Enabled:=false;
end;

procedure TMainForm.USBCheckBoxChange(Sender: TObject);
begin
     USBLabel1.Visible:=USBCheckBox.Checked;
     USBLabel2.Visible:=USBCheckBox.Checked;
     USBLabel3.Visible:=USBCheckBox.Checked;
     USBFrequLabel.Visible:=USBCheckBox.Checked;
     USBRestartButton.Visible:=USBCheckBox.Checked;
     AuxOscImage.Visible:=USBCheckBox.Checked;
     APLLPOSTComboBox.Enabled:=USBCheckBox.Checked;
     LPOSCENCheckBox.Enabled:=not USBCheckBox.Checked;
     if USBCheckBox.Checked then LPOSCENCheckBox.Checked:=false;
     USBRestartButtonClick(self);
     AOSCTypeComboBoxChange(self);
end;

procedure TMainForm.USBRestartButtonClick(Sender: TObject);
var i:integer;
begin
     AuxOscImage.Picture.Clear;
     AuxImageList.GetBitmap(0,AuxOscImage.Picture.Bitmap);
     AOscSource:=ANONE;
     //AuxOscImage.Picture.LoadFromFile('auxosc.png');
     {Set Visible property to false on all controls if tag<500}
     for i:=0 to AuxTabSheet.ControlCount-1 do
         if AuxTabSheet.Controls[i].Tag<500 then AuxTabSheet.Controls[i].Visible:=false;
end;

end.

