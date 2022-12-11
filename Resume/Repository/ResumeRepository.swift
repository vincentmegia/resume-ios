//
//  ResumeRepository.swift
//  Resume
//
//  Created by Vince Megia on 22/10/22.
//

import Foundation

class ResumeRepository : ResumeRepositoryProtocol {
    func getResume() -> Resume? {
        var resume = MockExperiences().get()
        return resume;
    }
}
