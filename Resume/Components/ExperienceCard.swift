//
//  ExperienceCard.swift
//  Resume
//
//  Created by Vince Megia on 16/10/22.
//

import SwiftUI

struct ExperienceCard: View {
    var experience: Experience
    var body: some View {
        HStack{
            ScrollView{
                VStack{
                    //                    Icon()
                    //                        .frame(maxWidth: .infinity, alignment: .leading)
                    //                        .padding([.leading, .bottom], 16)
                    HStack{
                        Text(experience.company.name)
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(Font.Weight.heavy)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading], 20)
                        Image(systemName: "arrowshape.right")
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                    }
                    Text(experience.company.duration)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(Font.Weight.heavy)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading], 20)
                    Text(experience.role.name)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(Font.Weight.heavy)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.bottom, .leading], 20)
                    
                    Text(experience.description)
                        .foregroundColor(.white)
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                    
                }
                .padding(.vertical, 24)
            }
            
        }
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(colors:
                                        [
                                            .purple.opacity(0.8),
                                            .orange.opacity(0.8),
                                            .pink.opacity(0.8),
                                        ], startPoint: .leading, endPoint: .bottom))
                .shadow(radius: 5)
        )
        .frame(minWidth: 300, maxWidth: .infinity, minHeight: 200, maxHeight: 300)
    }
}

struct ExperienceCard_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceCard(experience: MockExperiences().get()!.experiences[0])
    }
}
