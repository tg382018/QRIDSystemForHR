import 'package:device_info_plus/device_info_plus.dart';

////////////////DEVICE ID ///////////////////
String identifier="";
final deviceinfoplugin=DeviceInfoPlugin();
Future<void>getDeviceID() async
{
  var build=await deviceinfoplugin.androidInfo;
  identifier= build.id;
}
/////////////////////////////////////////////