//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <my_browser1/my_browser1_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) my_browser1_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MyBrowser1Plugin");
  my_browser1_plugin_register_with_registrar(my_browser1_registrar);
}
