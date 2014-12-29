#import "CTLease.h"

@interface CTFixedLease : CTLease {
    float totalRental;
    int numberOfWeeks;
}

@property(nonatomic) float totalRental;
@property(nonatomic) int numberOfWeeks;

+ (CTLease *)fixedTermLeaseWithPrice:(float)totalRental
                            forWeeks:(int)numberOfWeeks;

@end
