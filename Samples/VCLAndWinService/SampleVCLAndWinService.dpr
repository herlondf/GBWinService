program SampleVCLAndWinService;

uses
  Vcl.Forms,
  System.SysUtils,
  System.Classes,
  GBWinService.Setup.Interfaces,
  FMain in 'FMain.pas' {frmMain},
  Service.Sample in 'Service.Sample.pas';

{$R *.res}

begin
  WinServiceSetup
    .ServiceName('SampleVCL')
    .ServiceTitle('Sample VCL')
    .ServiceDetail('Test Service')
    .OnStart(OnStartService)
    .OnStop(OnStopService)
    .OnPause(OnPauseService)
    .OnExecute(onExecuteService);

  if not WinServiceSetup.RunAsService then
    WinServiceSetup.CreateForm(TfrmMain, frmMain);
end.
