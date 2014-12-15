//
//  RootViewController.m
//  RentalManager
//
//  Created by Amos Bannister on 10/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

@interface RootViewController()

@property NSArray *rentalProperty;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

// Określenie liczby sekcji w widoku tabeli.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 25;
    
}

// Dostosowanie wyglądu komórki widoku tabeli.
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString
                           stringWithFormat:@"Nieruchomości do wynajęcia %ld", (long)indexPath.row];
    

    NSLog(@"Nieruchomości do wynajęcia %ld", (long)indexPath.row);
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    // Przekazanie wskazanego obiektu do nowego kontrolera widoku.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
	*/
}

- (void)didReceiveMemoryWarning
{
    // Usunięcie widoków, które nie posiadają widoku nadrzędnego.
    [super didReceiveMemoryWarning];
    
    // Zrzeczenie się własności wszelkich buforowanych danych, obrazów itd., które nie są obecnie używane.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Zrzeczenie się własności wszelkich danych, które można odtworzyć w metodzie viewDidLoad lub na żądanie,
    // na przykład: self.myOutlet = nil;
}

@end
