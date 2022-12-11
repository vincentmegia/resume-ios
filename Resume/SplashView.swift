//
//  Splash.swift
//  WhereTo
//
//  Created by Vince Megia on 17/9/22.
//

import SwiftUI

struct SplashView: View {
    @State private var pushNewView = false
    var body: some View {
        NavigationView {
            NavigationLink(isActive: $pushNewView) {
                ContentView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                LinearGradient(
                    colors: [.red, .blue, .yellow],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(
                    VStack {
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .frame(width: 104, height: 104)
                        Spacer()
                        Text("Stupendousware")
                            .font(Font.system(size: 16, weight: .bold))
                        Text("Copyright 2022.")
                            .font(Font.system(size: 16, weight: .bold))
                    }
                )
            }
        }
        .task  {
            Thread.sleep(forTimeInterval: 2)
            pushNewView = true
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
