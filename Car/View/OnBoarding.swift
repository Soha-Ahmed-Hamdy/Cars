//
//  ContentView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct OnBoarding: View {
    
    var body: some View {
        TabView{
            ForEach(carsData){ item in
                CardView(car: item)
                    .cornerRadius(20)
                    .padding(.horizontal, 5)
                    
            }
        }// tabView
        .tabViewStyle(PageTabViewStyle())
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
