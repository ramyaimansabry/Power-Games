//
//  FetchGivewaysGamesUseCase.swift
//  PowerGames
//
//  Created by Ramy Sabry on 13/05/2024.
//

import Foundation

final class FetchGivewaysGamesUseCase {
    private let repository: HomeRepositoryContract

    init(repository: HomeRepositoryContract = HomeRepository()) {
        self.repository = repository
    }
}

extension FetchGivewaysGamesUseCase: FetchGivewaysGamesUseCaseContract {
    func execute(platform: String?) async throws -> [GiveawayGameData] {
        try await repository
            .fetchGiveWaysList(platform: platform)
            .map(\.toData)
    }
}
