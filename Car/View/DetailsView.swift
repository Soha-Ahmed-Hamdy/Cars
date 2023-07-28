//
//  DetailsView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct DetailsView: View {
    var car : Car
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                HeaderView(car: car)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 15){
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradient[0])
                    
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    CarModelView(car: car)
                    
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradient[0])
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    LinkView(car: car)
                        .padding(.bottom,40)
                   
                }//enner VStack
                .frame(maxWidth: 880)
                
            }//VStack
            .padding(.horizontal)
            .ignoresSafeArea()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(car: carsData[2])
    }
}

