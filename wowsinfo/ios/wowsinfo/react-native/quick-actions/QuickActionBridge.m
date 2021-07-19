//
//  QuickActionBridge.m
//  wowsinfo
//
//  Created by Yiheng Quan on 19/7/21.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(QuickActionManager, RCTEventEmitter)

RCT_EXTERN_METHOD(addMainAccount: (NSString *)username)

@end
