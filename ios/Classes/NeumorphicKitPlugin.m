// filepath: /C:/Users/Muralidharan K/AndroidStudioProjects/neumorphic_kit/ios/Classes/NeumorphicKitPlugin.m
#import "NeumorphicKitPlugin.h"
#import <Flutter/Flutter.h>

@implementation NeumorphicKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"neumorphic_kit"
            binaryMessenger:[registrar messenger]];
  NeumorphicKitPlugin* instance = [[NeumorphicKitPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end