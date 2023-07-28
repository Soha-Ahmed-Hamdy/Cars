//
//  ListItem.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct ListItem: View {
    var car : Car
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5), radius: 2, x: 3, y: 3)
            VStack(alignment: .leading, spacing: 5){
                
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                
            }//VStack
            .padding(.leading,10)
                        
            
        }//HStack
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(car: carsData[0])
    }
}
