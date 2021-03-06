#import "CTLease.h"
#import "CTPeriodicLease.h"
#import "CTFixedLease.h"

@implementation CTLease

+ (CTLease *)periodicLease:(float)weeklyPrice
{
    CTLease *lease = [CTPeriodicLease periodicLeaseWithWeeklyPrice:weeklyPrice];
    return lease;
}

+ (CTLease *)fixedTermLeaseWithPrice:(float)totalRental
                            forWeeks:(NSInteger)numberOfWeeks
{
    CTLease *lease = [CTFixedLease fixedTermLeaseWithPrice:totalRental
                                                  forWeeks:(int)numberOfWeeks];
    return lease;
}

@end
