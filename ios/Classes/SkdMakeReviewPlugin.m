#import "SkdMakeReviewPlugin.h"
#import <skd_make_review/skd_make_review-Swift.h>

@implementation SkdMakeReviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSkdMakeReviewPlugin registerWithRegistrar:registrar];
}
@end
