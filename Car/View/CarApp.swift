//
//  CarApp.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

@main
struct CarApp: App {
    
    @AppStorage("isOnbBoarding") var isOnbBoarding : Bool = true 
    
    var body: some Scene {
        WindowGroup {
            if isOnbBoarding{
                OnBoarding()
            }else{
                CarListView()
            }
        }
    }
}
