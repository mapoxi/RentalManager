//
//  CTRentalProperty.m
//  RentalManager
//
//  Created by Amos Bannister on 11/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CTRentalProperty.h"


@implementation CTRentalProperty

@synthesize rentalPrice, address, propertyType;

+ (id) rentalPropertyOfType:(PropertyType)newPropertyType rentingFor:(float)newRentalPrice atAddress:(NSString *)newAddress
{
    id newObject = [[CTRentalProperty alloc]initWithAddress:newAddress rentalPrice:newRentalPrice andType:newPropertyType];
    
    return newObject;
}

- (id) initWithAddress:(NSString *)newAddress rentalPrice:(float)newRentalPrice andType:(PropertyType)newPropertyType
{
    if ((self = [super init])) {
        self.address = newAddress;
        self.rentalPrice = newRentalPrice;
        self.propertyType = newPropertyType;
    }
    
    return self;
}

- (void) increaseRentalByPercent:(float)percent withMaximum:(float)max {
    rentalPrice = rentalPrice * (100 + percent) / 100;
    rentalPrice = fmin(rentalPrice, max);
}

- (void) decreaseRentalByPercent:(float)percent withMinimum:(float)min {
    rentalPrice = rentalPrice * (100 - percent) / 100;
    rentalPrice = fmax(rentalPrice, min);
    
}

/*void aSimpleDynamicMethodIMP(id self, SEL _cmd)
{
    NSLog(@"Wywołałeś metodę o nazwie %@ ", NSStringFromSelector(_cmd));
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(aSimpleDynamicMethod)){
        NSLog(@"Dodaję metodę o nazwie %@ do klasy %@",
              NSStringFromSelector(sel),
              NSStringFromClass([self class]));
        class_addMethod([self class],
                        sel,
                        (IMP)aSimpleDynamicMethodIMP,
                        "v@: ");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
    }
*/
@end
