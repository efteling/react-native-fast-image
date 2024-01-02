//
//  FFFastImageTransition.h
//  RNFastImage
//
//  Created by Tom Bakker on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import <SDWebImage/SDWebImageTransition.h>

NS_ASSUME_NONNULL_BEGIN

@interface FFFastImageTransition : NSObject

@property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, strong) NSString *effect;

- (instancetype)initWithDuration:(NSTimeInterval)duration
                          effect:(NSString *)effect;

- (SDWebImageTransition *)sd_webImageTransition;

@end

NS_ASSUME_NONNULL_END
