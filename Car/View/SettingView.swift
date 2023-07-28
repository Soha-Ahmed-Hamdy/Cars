//
//  SettingView.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import SwiftUI

struct SettingView: View {
    @AppStorage("isOnbBoarding") var isOnbBoarding : Bool = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                GroupBox{
                    HStack{
                        Text("CARS")
                            .font(.title3)
                            .fontWeight(.heavy)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }//first HStack
                    Divider()
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        Text("Cars app includes very important information about the lucutry cars, it ahs details about the history of different models")
                            .padding(.horizontal, 5)
                            .multilineTextAlignment(.leading)
                    }//second HStack
                }//first GroupBox
                
                //toggle
                Toggle(isOn: $isOnbBoarding) {
                    Text(isOnbBoarding ? "Restarted" : "Restart")
                        .font(.title)
                        .foregroundColor(isOnbBoarding ? .green : .gray)
                    
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(40)
                .padding(8)
                
                Spacer()
                
                
                
            }//VStack
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
