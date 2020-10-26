//
//  SplashView.swift
//  BellaFigura
//
//  Created by Sara Oliviero on 26/10/2020.
//

import SwiftUI

    struct SplashView: View {
        
        // 1.
        @State var isActive:Bool = false
        
        var body: some View {
            VStack {
                // 2.
                if self.isActive {
                    // 3.
                    infoView()
                } else {
                    // 4.
                    Image("logo")
                }
            }
            // 5.
            .onAppear {
                // 6.
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    // 7.
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
