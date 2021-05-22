//
//  countDataModel.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation

import Foundation

// MARK: - WelcomeElement
import Foundation

// MARK: - WelcomeElement
struct CountElement: Codable {
    let id: String
    let kickCount: Int
    let timestamp, contents, title: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case kickCount = "kick_count"
        case timestamp, contents, title
    }
}

typealias Welcome = [CountElement]

