//
//  AppDelegate.swift
//  back to the future
//
//  Created by Clarette Terrasi on 21/01/2020.
//  Copyright © 2020 Clarette Terrasi Díaz. All rights reserved.
//

// 1. Crear una UI básica con cuatro labels, donde cada una representa un dígito de un año determinado
// 2. Referenciar los elementos de la UI en el FirstViewController
// 3. Crear una nueva clase llamada Utilities, que contiene dos métodos: GetCurrentYear, para obtener el año actual, y GetLetterAtIndex, para obtener cada dígito del año por separado
// 4. En el método viewDidLoad del FirstViewController, asignar cada dígito a cada elemento de la UI, usando los métodos de Utilities
// 5. Crear el método GetCurrentTime para obtener la hora actual, en Utilities
// 6. Crear un temporizador en el FirstViewController para... : instancio a Timer(), en el viewDidLoad llamar al método scheduledTimer de Timer para establecer el intervalo de cambio de la hora (cada 1 seg); este metodo hace referencia a la función Tick que pinta cada tick en el UI
// 7. Creo la función Tick fuera del viewDidLoad para rellenar el texto de la timeLabel con la hora actual, usando GetCurrentTime de Utilities

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

