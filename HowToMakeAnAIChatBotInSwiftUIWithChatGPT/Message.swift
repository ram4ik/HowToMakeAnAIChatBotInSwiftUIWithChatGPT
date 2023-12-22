//
//  Message.swift
//  HowToMakeAnAIChatBotInSwiftUIWithChatGPT
//
//  Created by test on 22.12.2023.
//

import Foundation

struct Message: Identifiable {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}
