//
//  CarModelView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct CarModelView: View {
    var car : Car
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Models"){
                ForEach(0 ..< 7){ model in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                        Text("Model \(model+1) :")
                            .fontWeight(.bold)
                            .foregroundColor(car.gradient[0])
                        Spacer()
                        Text(car.models[model])
                            .foregroundColor(car.gradient[0])
                    }//HStack
                    .padding(.vertical, 5)
                }
            }
            
        }// group box
        .foregroundColor(car.gradient[0])
        
    }
}

struct CarModelView_Previews: PreviewProvider {
    static var previews: some View {
        CarModelView(car: carsData[0])
    }
}
