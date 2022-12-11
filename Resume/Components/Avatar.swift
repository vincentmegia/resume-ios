//
//  Avatar.swift
//  Resume
//
//  Created by Vince Megia on 15/10/22.
//

import SwiftUI

struct Avatar: View {
    var imageSystemName: String
    var body: some View {
        ZStack{
            Image("avatar")
                .imageScale(.large)
                .frame(width: 160, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .overlay(
                    Image(systemName: imageSystemName)
                        .frame(width: 40, height: 40)
                        .background(Color.gray)
                        .clipShape(Circle())
                        .padding(EdgeInsets.init(top: -60, leading: 150, bottom: 0, trailing: 0))
                )
            Rectangle()
                .fill(.red)
                .frame(width: 120, height: 800)
                .rotationEffect(Angle.degrees(80))
                .padding(.top, -150)
                .zIndex(-1)
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity
            )
        .clipShape(Rectangle())
        .padding()
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(imageSystemName: "camera.fill")
    }
}
