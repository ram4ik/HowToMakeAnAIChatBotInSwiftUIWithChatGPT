//
//  ChatController.swift
//  HowToMakeAnAIChatBotInSwiftUIWithChatGPT
//
//  Created by test on 22.12.2023.
//

import Foundation

class ChatController: ObservableObject {
    @Published var messages: [Message] = [
        .init(content: "Hello", isUser: true),
        .init(content: "Hello", isUser: false),
    ]
}
