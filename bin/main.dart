import 'package:auth/auth.dart';
import 'package:thrift/thrift.dart';
import 'package:xkcm/xkcm.dart' as t_xkcm;
import 'package:http/http.dart' as http;

main(List<String> arguments) async {
  var httpClient = http.IOClient();
  var config = THttpConfig(Uri.parse(""), {"User-Agent":"Java/THttpClient/HC"});
  THttpClientTransport tHttpClientTransport = THttpClientTransport(httpClient, config);
  await tHttpClientTransport.open();
  TCompactProtocol tCompactProtocol = TCompactProtocol(tHttpClientTransport);
  AuthServiceClient client = AuthServiceClient(tCompactProtocol);

  var terminalInfo = t_xkcm.TerminalInfo();
  terminalInfo.deviceType = t_xkcm.DeviceType.ANDROID;
  terminalInfo.deviceId = "18ef2c8160900bc0";
  terminalInfo.osVersion = "9";
  terminalInfo.deviceInfo = "EML-AL00";

  var i18Info = t_xkcm.I18nInfo();
  i18Info.region = t_xkcm.Region.CN;
  i18Info.language = t_xkcm.Language.ZH_CN;
  i18Info.areaName = "";

  var appInfo = t_xkcm.AppInfo();
  appInfo.appId = "xk-hygea";
  appInfo.appVersion = "3.9.31";

  var args = t_xkcm.CommArgs();
  args.terminalInfo = terminalInfo;
  args.appInfo = appInfo;
  args.i18nInfo = i18Info;
  args.authMode = t_xkcm.AuthMode.NONE;
  args.checkVersion = false;

  var extInfo = LoginExtInfo();
  var result = await client.login(args, "", "", extInfo, UserType.MEMBER);
  print(result.authUserInfo.figureUrl);
}