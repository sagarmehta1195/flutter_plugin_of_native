#ifndef FLUTTER_PLUGIN_MY_BROWSER1_PLUGIN_H_
#define FLUTTER_PLUGIN_MY_BROWSER1_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace my_browser1 {

class MyBrowser1Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MyBrowser1Plugin();

  virtual ~MyBrowser1Plugin();

  // Disallow copy and assign.
  MyBrowser1Plugin(const MyBrowser1Plugin&) = delete;
  MyBrowser1Plugin& operator=(const MyBrowser1Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace my_browser1

#endif  // FLUTTER_PLUGIN_MY_BROWSER1_PLUGIN_H_
