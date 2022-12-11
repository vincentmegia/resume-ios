//
//  ContentView.swift
//  Resume
//
//  Created by Vince Megia on 30/9/22.
//

import SwiftUI

struct ContentView: View {
    var resumeRepository = ResumeRepository()
    @State var resume: Resume
    @State private var selectedExperience: Experience?
    @State private var isShowingSheet = false
    
    init () {
        resume = resumeRepository.getResume()!
        print(resume)
    }
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    Avatar(imageSystemName: "camera.fill")
                        .frame(height: 250)
                        .padding(.top, 60)
                        .background(LinearGradient(colors: [.white, .red.opacity(0.5)], startPoint: .top, endPoint: .bottom))
                    VStack {
                        SkillSection(skills: [
                            Skill(id: 1, name: "Java", ratings: 5),
                            Skill(id: 2, name: "Javascript", ratings: 5),
                            Skill(id: 3, name: "C#", ratings: 3),
                            Skill(id: 4, name: "SQL", ratings: 4),
                            Skill(id: 5, name: "Swift", ratings: 3)
                        ])
                        .padding(.bottom, 16)
                        Divider()
                            .background(.black)
                        Section()
                            .padding([.bottom, .top], 16)
                        Divider()
                            .background(.black)
                            .padding(.bottom)
                        Text("Experiences")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("cards content are scrollable")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 8)
                        ForEach(resume.experiences) {experience in
                            ExperienceCard(experience: experience)
                                .onTapGesture {
                                    isShowingSheet.toggle()
                                    selectedExperience = experience
                                }
                                .padding(.bottom, 16)
                        }
                        .sheet(item: $selectedExperience) { item in
                            if #available(iOS 16.0, *) {
                                ExperienceDetail(experience: item)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 100, maxHeight: 300, alignment: .top)
                                    .presentationDetents([.large, .large])
                                    .padding()
                                Spacer()
                            } else {
                                ExperienceDetail(experience: item)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 100, maxHeight: 300, alignment: .top)
                                Spacer()
                            }
                        }
                        .padding(.bottom, 8)
                        
                    }
                    .background(.white)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
