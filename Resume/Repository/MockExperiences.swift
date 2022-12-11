//
//  MockData.swift
//  Resume
//
//  Created by Vince Megia on 22/10/22.
//

import Foundation

struct ResponseData: Decodable {
    var resume: Resume
}

class MockExperiences {
    func get() -> Resume? {
        do {
            if let filePath = Bundle.main.path(forResource: "resume", ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                let decodedData = try JSONDecoder().decode(Resume.self, from: data)
                return decodedData
            }
        } catch {
            print("error: \(error)")
        }
        return Resume(profile: "", experiences: [])
    }
}
