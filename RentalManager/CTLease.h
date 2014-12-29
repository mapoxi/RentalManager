#import <UIKit/UIKit.h>

@interface CTLease : NSObject

+(CTLease *)periodicLease:(float)weeklyPrice;
+(CTLease *)fixedTermLeaseWithPrice:(float)totalRental forWeeks:(NSInteger)numberOfWeeks;

@end
