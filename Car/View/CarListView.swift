//
//  CarListView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct CarListView: View {
    @State var isSettingPresented : Bool = false
    var body: some View {
        NavigationView{
            List{
                ForEach(carsData){ car in
                    NavigationLink(destination: DetailsView(car: car)){
                        ListItem(car: car)
                            .padding(.vertical, 4)
                    }
                }
            }// list
            .navigationTitle("Cars")
            .navigationBarItems(trailing: Button(action: {
                isSettingPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isSettingPresented) {
                SettingView()
            }
        }//NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView()
    }
}
