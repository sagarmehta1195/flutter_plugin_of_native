#include "include/my_browser1/my_browser1_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "my_browser1_plugin.h"

void MyBrowser1PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  my_browser1::MyBrowser1Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
