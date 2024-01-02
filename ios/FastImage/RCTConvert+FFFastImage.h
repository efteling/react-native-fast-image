#import <React/RCTConvert.h>

@class FFFastImageSource;
@class FFFastImageTransition;

@interface RCTConvert (FFFastImage)

+ (FFFastImageSource *)FFFastImageSource:(id)json;
+ (FFFastImageTransition *)FFFastImageTransition:(id)json;

@end
