//
//  AlertItem.swift
//  PowerGames
//
//  Created by Ramy Sabry on 14/05/2024.
//

import UIKit

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String?
    let message: String?
    let style: UIAlertController.Style
    let actions: [AlertAction]

    init(
        title: String? = nil,
        message: String?,
        style: UIAlertController.Style = .alert,
        actions: [AlertAction] = [.init(title: "OK", action: nil)]
    ) {
        self.title = title
        self.message = message
        self.style = style
        self.actions = actions
    }
}

extension AlertItem: Equatable {
    static func == (lhs: AlertItem, rhs: AlertItem) -> Bool {
        lhs.id == rhs.id
    }
}
