//
//  LinkView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct LinkView: View {
    var car : Car
    var body: some View {
        GroupBox(){
            HStack{
                Link("Source : Wikipedia", destination: URL(string: "https://Wikipedia.com")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }// HStack
        }
        .foregroundColor(car.gradient[0])
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(car: carsData[0])
    }
}
