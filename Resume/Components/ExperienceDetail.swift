import SwiftUI

struct ExperienceDetail: View {
    var experience: Experience
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Responsiblities:")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                ForEach(experience.role.responsibilities, id: \.self) { responsibility in
                        Text("\u{2022} \(responsibility)")
                        .padding(EdgeInsets.init(top: 0, leading: 16, bottom: 8, trailing: 0))
                        .font(.body)
                }
                Text("Technology stack:")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text(experience.technologyStack)
                    .padding(EdgeInsets.init(top: 0, leading: 16, bottom: 8, trailing: 0))
                    .font(.body)
                Spacer()
            }
        }
    }
}

struct ExperienceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceDetail(experience: (MockExperiences().get()?.experiences[1])!)
    }
}
