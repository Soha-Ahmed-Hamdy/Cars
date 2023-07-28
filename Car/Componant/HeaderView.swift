//
//  HeaderView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct HeaderView: View {
    var car : Car
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.5)
                .animation(.easeOut(duration: 2), value: isAnimating)
            
        }//ZStack
        .onAppear{
            isAnimating = true
        }
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center )
        .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(car: carsData[0])
    }
}
