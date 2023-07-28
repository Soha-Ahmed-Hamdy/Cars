//
//  CardView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct CardView: View {
    var car : Car
    @AppStorage("isOnbBoarding") var isOnbBoarding : Bool = true
    
    var body: some View {
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text(car.headline)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
                .padding(.bottom, 10)
            
            Button(action: {
                isOnbBoarding = false
            }, label: {
                Image(systemName: "arrow.right.circle")
                Text("Start")
            })
            .font(.largeTitle)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(Capsule().fill(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .bottomTrailing, endPoint: .topLeading)))
            
        }// outer VStack
        .foregroundColor(.white)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0 , maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
        .shadow(color: .black.opacity(0.5), radius: 2, x: 2, y: 2)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(car: carsData[0])
    }
}
