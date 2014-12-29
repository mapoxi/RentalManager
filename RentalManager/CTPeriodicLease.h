#import "CTLease.h"

@interface CTPeriodicLease : CTLease{
    float weeklyRental;
}

@property(nonatomic) float weeklyRental;

+(CTLease *)periodicLeaseWithWeeklyPrice:(float)weeklyPrice;

@end
