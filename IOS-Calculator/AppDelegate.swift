//
//  AppDelegate.swift
//  IOS-Calculator
//
//  Created by Mikel Valle on 26/9/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //Aquí la mandamos a llamar
        setupView()
        
        return true
    }
//Aquí van aparecer las funciones privadas de la app
    
    private func setupView(){
      
        
        window = UIWindow(frame: UIScreen.main.bounds)//Estamos instanciando el controlador window y le estamos diciendo que el tamaño de dicha pantalla es el completo
    let vc = HomeViewController()
        window?.rootViewController = vc // Le indicamos a esta vista es nuestro HomeViewController
        window?.makeKeyAndVisible()//Se inicia y se mnuestra visible
        
        
    }


}

