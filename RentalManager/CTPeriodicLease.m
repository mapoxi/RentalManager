#import "CTPeriodicLease.h"

@implementation CTPeriodicLease

@synthesize weeklyRental;

+ (CTLease *)periodicLeaseWithWeeklyPrice:(float)weeklyPrice
{
    CTPeriodicLease *lease;
    lease.weeklyRental = weeklyPrice;
    return lease;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"$%0.2f tygodniowo", self.weeklyRental];
}

@end
