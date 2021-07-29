//
//  FruitModel.swift
//  Fructus
//
//  Created by SoePaing on 02/07/2021.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
