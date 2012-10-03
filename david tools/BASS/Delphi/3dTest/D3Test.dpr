{
BASS 3D Test, copyright (c) 1999-2000 Ian Luck.
==================================================
Other source: DTMain.pas, DTMain.dfm, DTSelect.pas, DTSelect.dfm
Delphi version by Titus Miloi (titus.a.m@t-online.de)
}
program D3Test;

uses
  Windows, Forms, BASS,
  DTMain in 'DTMain.pas' {Form1},
  DTSelect in 'DTSelect.pas' {Form2};

var
  quality, device: Integer;
  c: Integer;
  str: string;
  name: PChar;
  eaxon: Boolean;
  env : Cardinal;
  vol, decay, dump : Single;
begin
  // initialize application
  Application.Initialize;
  Application.Title := 'BASS - 3D Test';

  // create device selector form
  eaxon := FALSE;
  Form2 := TForm2.Create(Application);
  c := 0;
  while (BASS_GetDeviceDescription(c) <> nil) do
  begin
    name := BASS_GetDeviceDescription(c);
    str := name;
    // Check if the device supports 3D - don't bother with update thread
    if BASS_Init(c, 44100, BASS_DEVICE_3D or BASS_DEVICE_NOTHREAD, Application.handle) then
    begin
      if BASS_GetEAXParameters(env,vol, decay, dump) then
        str := str + ' [EAX]'; // it has EAX
      BASS_Free;
      Form2.ListBox1.Items.Add(str);
    end;
    c := c + 1;
  end;
  Form2.ListBox1.ItemIndex := 0;
  Form2.ShowModal;
  if Form2.CheckBox1.Checked then
    quality := 22050
  else
    quality := 44100;
  device := Form2.ListBox1.ItemIndex;
  Form2.Free;
  // Check that BASS 1.8 was loaded
  if (BASS_GetVersion <> MAKELONG(1,8)) then
  begin
    MessageBox(0, 'BASS version 1.8 was not loaded', 'Incorrect BASS.DLL', 0);
    Halt;
  end;
  // Initialize the output device with 3D
  if not BASS_Init(device, quality, BASS_DEVICE_3D, Application.handle) then
  begin
    MessageBox(0, 'Can''t initialize output device', 'Error', 0);
    Halt;
  end;
  // Use meters as distance unit, real world rolloff, real doppler effect
  BASS_Set3DFactors(1.0, 1.0, 1.0);
  // Turn EAX off (volume=0.0), if error then EAX is not supported
  if BASS_SetEAXParameters(-1, 0.0, -1.0, -1.0) then
    eaxon := TRUE;
  BASS_Start;	{ Start digital output }

  // create and start the main application form
  Application.CreateForm(TForm1, Form1);
  with Form1 do
  begin
    ComboBox1.Enabled := eaxon;
    ComboBox1.ItemIndex := 0;
  end;
  Application.Run;

  BASS_Stop;
  BASS_Free;
end.

