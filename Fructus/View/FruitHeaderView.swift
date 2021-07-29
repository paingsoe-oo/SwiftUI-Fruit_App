//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by SoePaing on 09/07/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: Property
    var fruit: Fruit
    
    @State private var isanimatingImage: Bool = false
    
    // MARK: Body
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isanimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isanimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
