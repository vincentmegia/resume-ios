//
//  Resume.swift
//  Resume
//
//  Created by Vince Megia on 13/11/22.
//

import Foundation

struct Resume: Decodable {
    var profile: String
    var experiences: [Experience]
}
