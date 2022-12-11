//
//  SkillSection.swift
//  Resume
//
//  Created by Vince Megia on 20/11/22.
//

import SwiftUI

struct SkillSection: View {
    var skills: [Skill] = []
    var body: some View {
        VStack{
            Text("Skills")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
                .padding()
            ForEach(skills) { skill in
                HStack{
                    Text(skill.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    Spacer()
                    ForEach(0 ..< skill.ratings) { rating in
                        Image(systemName: "star.fill")
                            .font(.title2)
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.bottom, 2)
            }
        }
    }
}

struct SkillSection_Previews: PreviewProvider {
    static var previews: some View {
        SkillSection(skills: [Skill(id: 1, name: "Java", ratings: 5),
                              Skill(id: 1, name: "Javascsript", ratings: 5)])
    }
}
