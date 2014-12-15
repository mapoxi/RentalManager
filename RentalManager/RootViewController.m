//
//  RootViewController.m
//  RentalManager
//
//  Created by Amos Bannister on 10/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

struct RentalProperty properties[] = {
    { @"ul. Wiejska 13, Gdańsk", TownHouse, 420.0f },
    { @"ul. Rogowa 74, Bydgoszcz", Unit, 365.0f },
    { @"ul. Kwiatowa 17, Barycz", Unit, 275.9f },
    { @"ul. Dobra 4, Gdańsk", Mansion, 1500.0f },
    { @"ul. Nowa 19, Klifowo", Mansion, 2000.0f }
};

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
    return ARRAY_SIZE(properties);
}

// Dostosowanie wyglądu komórki widoku tabeli.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = properties[indexPath.row].address;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Nieruchomość za %0.2f zł tygodniowo", properties[indexPath.row].weeklyRentalPrice];
    
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