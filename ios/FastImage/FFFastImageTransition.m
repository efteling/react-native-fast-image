//
//  FFFastImageTransition.m
//  RNFastImage
//
//  Created by Tom Bakker on 02/01/2024.
//

#import "FFFastImageTransition.h"

@implementation FFFastImageTransition
- (instancetype)initWithDuration:(NSTimeInterval)duration
                          effect:(NSString *)effect
{
    self = [super init];
    if (self) {
        _duration = duration;
        _effect = effect;
    }
    return self;
}

- (nonnull SDWebImageTransition *)sd_webImageTransition {
    if ([_effect isEqualToString:@"cross-dissolve"]) {
        return [SDWebImageTransition fadeTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"flip-from-top"]) {
        return [SDWebImageTransition flipFromTopTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"flip-from-right"]) {
        return [SDWebImageTransition flipFromRightTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"flip-from-bottom"]) {
        return [SDWebImageTransition flipFromBottomTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"flip-from-left"]) {
        return [SDWebImageTransition flipFromLeftTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"curl-up"]) {
        return [SDWebImageTransition curlUpTransitionWithDuration: _duration];
    }

    if ([_effect isEqualToString:@"curl-down"]) {
        return [SDWebImageTransition curlDownTransitionWithDuration: _duration];
    }

    return [SDWebImageTransition fadeTransitionWithDuration: _duration];
}

@end
