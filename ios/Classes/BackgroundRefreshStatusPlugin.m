#import "BackgroundRefreshStatusPlugin.h"
#if __has_include(<background_refresh_status/background_refresh_status-Swift.h>)
#import <background_refresh_status/background_refresh_status-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "background_refresh_status-Swift.h"
#endif

@implementation BackgroundRefreshStatusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBackgroundRefreshStatusPlugin registerWithRegistrar:registrar];
}
@end
