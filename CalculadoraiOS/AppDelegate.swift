//
//  AppDelegate.swift
//  CalculadoraiOS
//
//  Created by Juan Antonio Ortega Budia on 14/03/22.
//

/*
 PREPARACION PROYECTO
 1 Muevo info.plist, lo meto en una carpeta que creo que la llamo archivos de soporte y cambio el path para que encuentre el archivo en la seccion PROYEC build settings -> packaging
 2 Borro SceneDelegate, ViewControler y MainStoryboard (move to trash)
 3 En info.plist doy al menos en application scene manifest para que me borre los items existentes
 6 raiz del proyecto - targets - general - deployment info - borro el campo main interface en el que pone main porque borré el archivo main storyboard y lo dejo vacío porque desde el método  didFinishLaunchingWithOptions  le voy a decir la pantalla que voy a lanzar primero
 7 Me asecurao que en launch Screeen file aparece launch screen que ese archivo storyboard no lo borré y que tiene el splash o vista de carga de la aplicacion
 8 VOY A USAR UBA ARQUITECTURA MODELO VISTA CONTROLADOR creando 3 carpetas para cada capa y tener organizados los archivos
 9 Además creo carpeta UTIL con todas las clases comunes al proyecto y que son rehutilizables y  SUPPORTING FILES O ARCHIVOS DE SOPORTE donde meteré los archivos de configuración como info.plist
 10 creo una carpeta dentro de View que se llama Launch y meto ahí la vista de splash de carga de la apllicacion o LaunchScreen.Storyboard
 11 Este archivo appdelegate que es el primero que se ejecuta voy a dejarlo al principio de todo
 12 creo el código que me dice que vista se ejecuta primero y lo meto en didFinishLaunchingWithOptions, para que quede más limpio, lo hago en una función que llamaré setupView que creo a aparte


import UIKit


//@main

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    //5 Antes de la funcion application creo una variable window de tipo UIWindow opcional que va a ser la un objeto con la primera ventana que voy a decir que se muestre
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setupView()
        return true
    }
    
    
    // funciones
    //13 aquí indico cual es la primera vista
    private func setupView(){
        
        //creo un objeto del controlador de la primera viata que creé
        let vc = HomeViewController()
        //le digo el tipo de pantalla que va a ser window aunque no es imprescindible para que funcione. Va a ser tipo UIWindow y el marco tipo panbtalla de inicio o main
        window = UIWindow(frame: UIScreen.main.bounds)
        // le digo al objeto ventana o window tipo UIWindow del que heredan todas las vistas que el primer contralador va a ser vc
        window?.rootViewController = vc
        //hago la primera ventana visible
        window?.makeKeyAndVisible()
        
    }
    
    
    

    
   4  BORRO ESTO QUE VIENE POR DEFECTO PORQUE SOLO VOY A USAR EL  DIDFISHLAUNCHINWITHOPTIONS
 
 // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

*/


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Setup
        setupView()
        
        return true
    }
    
    // MARK: - Private methods
    
    private func setupView() {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

}
