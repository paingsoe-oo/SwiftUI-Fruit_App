//
//  StartButtonView.swift
//  Fructus
//
//  Created by SoePaing on 30/06/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - PROPERTY
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
            isOnBoarding = false
        }){
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
