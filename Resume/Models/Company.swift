//
//  Company.swift
//  Resume
//
//  Created by Vince Megia on 22/10/22.
//

import Foundation

struct Company: Identifiable, Decodable {
    var id: String
    var name: String
    var address: String
    var image: String
    var duration: String
}

