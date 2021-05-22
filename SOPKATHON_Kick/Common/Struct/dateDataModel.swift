//
//  dateDataModel.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation

struct DateElement: Codable {
    let id: String
    let kickCount: Int
    let timestamp, contents, title: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case kickCount = "kick_count"
        case timestamp, contents, title
    }
}
typealias Date = [DateElement]
