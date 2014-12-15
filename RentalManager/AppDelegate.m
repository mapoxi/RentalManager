//
//  AppDelegate.m
//  RentalManager
//
//  Created by Piotr Mlynarski on 15.12.2014.
//  Copyright (c) 2014 Piotr Mlynarski. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window=_window;

@synthesize navigationController=_navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // W tym miejscu można umieścić polecenia wykonywane po uruchomieniu aplikacji.
    // Dodanie do okna widoku kontrolera nawigacyjnego i jego wyświetlenie.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Ta metoda jest wywoływana, gdy aplikacja przechodzi ze stanu aktywnego do nieaktywnego. Może być wywołana w określonych sytuacjach (na przykład w chwili odbywania rozmowy telefonicznej lub po otrzymaniu wiadomości SMS) bądź kiedy użytkownik kończy działanie aplikacji. Metoda rozpoczyna proces przejścia do stanu pozostania w tle. Tę metodę można wykorzystać do wstrzymania wykonywania bieżących zadań, wyłączenia liczników czasu, zmniejszenia liczby klatek generowanych przez OpenGL ES. W grach ta metoda powinna być użyta do wstrzymania gry (pauza).
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Tę metodę należy wykorzystać do zwolnienia zasobów współdzielonych, zapisania danych użytkownika, wyzerowania liczników czasu oraz do przechowania takiej ilości informacji o stanie, która pozwoli na przywrócenie aplikacji do stanu bieżącego. Jeżeli aplikacja obsługuje działanie w tle, w chwili kończenia działania należy wywołać tę metodę zamiast applicationWillTerminate:.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Ta metoda jest wywoływana podczas przechodzenia aplikacji ze stanu aktywnego do działania w tle. Można więc tutaj wycofać wiele zmian wprowadzonych w chwili przechodzenia do stanu działania w tle.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     W tej metodzie można wznowić działanie zadań zatrzymanych (lub nieuruchomionych), gdy aplikacja była nieaktywna. Jeżeli aplikacja znajdowała się w trybie działania w tle, w metodzie można przeprowadzić odświeżenie interfejsu użytkownika.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Ta metoda jest wywoływana, gdy działanie aplikacji ma zostać zakończone. Zapisz dane jeśli zachodzi taka potrzeba. Zapoznaj się również z opisem metody applicationDidEnterBackground:.
     */
}

@end