//
//  Profile.swift
//  Resume
//
//  Created by Vince Megia on 16/10/22.
//

import SwiftUI

struct Section: View {
    var body: some View {
        VStack{
            Text("Profile")
                .font(.title2)
                .foregroundColor(.gray)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
            Text("Experienced and driven Staff software engineer with more than 18+ years of experience in all aspects of development lifecycle.")
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Section()
    }
}
