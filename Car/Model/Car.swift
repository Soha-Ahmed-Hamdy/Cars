//
//  Car.swift
//  Car
//
//  Created by Soha Ahmed Hamdy on 28/07/2023.
//

import Foundation
import SwiftUI

struct Car : Identifiable{
    let id = UUID()
    let title : String
    let headline : String
    let image : String
    let gradient : [Color]
    let description : String
    let models : [String]
}
