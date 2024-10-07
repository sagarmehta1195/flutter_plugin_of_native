import 'package:flutter_test/flutter_test.dart';
import 'package:my_browser1/my_browser1.dart';
import 'package:my_browser1/my_browser1_platform_interface.dart';
import 'package:my_browser1/my_browser1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyBrowser1Platform
    with MockPlatformInterfaceMixin
    implements MyBrowser1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getPlatformVersion1() {
    // TODO: implement getPlatformVersion1
    throw UnimplementedError();
  }

  @override
  Future<String?> getPlatformVersion2() {
    // TODO: implement getPlatformVersion2
    throw UnimplementedError();
  }
}

void main() {
  final MyBrowser1Platform initialPlatform = MyBrowser1Platform.instance;

  test('$MethodChannelMyBrowser1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyBrowser1>());
  });

  test('getPlatformVersion', () async {
    MyBrowser1 myBrowser1Plugin = MyBrowser1();
    MockMyBrowser1Platform fakePlatform = MockMyBrowser1Platform();
    MyBrowser1Platform.instance = fakePlatform;

    expect(await myBrowser1Plugin.getPlatformVersion(), '42');
  });
}
