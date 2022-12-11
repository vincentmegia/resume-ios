//
//  Experience.swift
//  Resume
//
//  Created by Vince Megia on 22/10/22.
//

import Foundation

struct Experience : Identifiable, Decodable {
    var id: Int
    var role: Role
    var company: Company
    var description: String
    var technologyStack: String
}
