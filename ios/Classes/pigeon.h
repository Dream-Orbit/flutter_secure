// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN


/// The codec used by FlutterSecurePlatformAPI.
NSObject<FlutterMessageCodec> *FlutterSecurePlatformAPIGetCodec(void);

@protocol FlutterSecurePlatformAPI
/// @return `nil` only when `error != nil`.
- (nullable NSNumber *)isRootedWithError:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void FlutterSecurePlatformAPISetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FlutterSecurePlatformAPI> *_Nullable api);

NS_ASSUME_NONNULL_END
