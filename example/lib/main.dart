import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_browser1/my_browser1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _myBrowser1Plugin = MyBrowser1();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _myBrowser1Plugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  Future<void> openSettingPage() async {
    String platformVersion1;
    try {
      String platformVersion1= await   _myBrowser1Plugin.getPlatformVersion1() ?? 'unable to open setting';
    }
    on PlatformException catch (e) {

      // Unable to open the browser print(e);
      platformVersion1 = 'Failed to get open setting version......................................';
    }
  }

  Future<void> openBrowserPage() async {
    String platformVersion1;
    try {
      String platformVersion1= await   _myBrowser1Plugin.getPlatformVersion2() ?? 'unable to open setting';
    }
    on PlatformException catch (e) {

      // Unable to open the browser print(e);
      platformVersion1 = 'Failed to get open setting version......................................';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
              children: [Text('Running on: $_platformVersion\n'),
                ElevatedButton(onPressed: ()
                {
                  openSettingPage();
                  },
                    child:Text("open settings"),
                ),
                ElevatedButton(
                  child: const Text('Open Browser'),
                  onPressed: ()  {
                    openBrowserPage();

                  }
                ),
        ],
          ),
        ),
      ),
    );
  }
}
