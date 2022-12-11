//
//  Icon.swift
//  Resume
//
//  Created by Vince Megia on 15/10/22.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 70, height: 70)
                .overlay(
                    Image(systemName: "moon.stars.fill")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                )
        }
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Icon()
        }
//        .background(.blue)
    }
}
