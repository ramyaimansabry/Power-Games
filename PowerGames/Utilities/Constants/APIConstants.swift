//
//  APIConstants.swift
//  PowerGames
//
//  Created by Ramy Sabry on 13/05/2024.
//

import Foundation

enum APIConstants: String, CaseIterable {
    case giveawaysList = "/api/giveaways"
    case giveawaysListbyPlatform = "/api/giveaways?platform=%@"
}
