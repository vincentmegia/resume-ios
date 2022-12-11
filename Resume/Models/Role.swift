//
//  Role.swift
//  Resume
//
//  Created by Vince Megia on 22/10/22.
//

import Foundation

struct Role : Identifiable, Decodable {
    var id: String
    var name: String
    var responsibilities: [String]
}
