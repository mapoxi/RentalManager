#import "RootViewController.h"
#import "CTRentalProperty.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CityMappings"
                                                     ofType:@"plist"];
    cityMappings = [[NSDictionary alloc] initWithContentsOfFile:path];
    properties =
    [[NSArray alloc] initWithObjects:
     [CTRentalProperty rentalPropertyOfType:TownHouse
                                 rentingFor:420.0f
                                  atAddress:@"ul. Wiejska 13, Gdańsk"],
     [CTRentalProperty rentalPropertyOfType:Unit
                                 rentingFor:365.0f
                                  atAddress:@"ul. Rogowa 74, Bydgoszcz"],
     [CTRentalProperty rentalPropertyOfType:Unit
                                 rentingFor:275.9f
                                  atAddress:@"ul. Kwiatowa 17, Barycz"],
     [CTRentalProperty rentalPropertyOfType:Mansion
                                 rentingFor:1500.0f
                                  atAddress:@"ul. Dobra 4, Gdańsk"],
     [CTRentalProperty rentalPropertyOfType:Mansion
                                 rentingFor:2000.0f
                                  atAddress:@"ul. Nowa 19, Klifowo"],
     nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)sectio
{
    return [properties count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                       reuseIdentifier:cellIdentifier];
    }
    
    CTRentalProperty *property = [properties objectAtIndex:indexPath.row];
    
    unsigned long indexOfComma = [property.address rangeOfString:@","].location;
    NSString *address = [property.address substringToIndex:indexOfComma];
    NSString *city = [property.address substringFromIndex:indexOfComma + 2];
    
    cell.textLabel.text = address;
    
    NSString *imageName = [cityMappings objectForKey:city];
    cell.imageView.image = [UIImage imageNamed:imageName];
    
    cell.detailTextLabel.text =
    [NSString stringWithFormat:@"Nieruchomości do wynajęcia za %0.2f zł tygodniowo",
     property.rentalPrice];
    return cell;
}

@end
