#import "CTFixedLease.h"

@implementation CTFixedLease

@synthesize totalRental, numberOfWeeks;

+ (CTLease *)fixedTermLeaseWithPrice:(float)totalRental
                            forWeeks:(int)numberOfWeeks
{
    CTFixedLease *lease = [CTFixedLease alloc];
    lease.totalRental = totalRental;
    lease.numberOfWeeks = numberOfWeeks;
    return lease;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"$%0.2f za %d tygodni",
            self.totalRental, self.numberOfWeeks];
}

@end
