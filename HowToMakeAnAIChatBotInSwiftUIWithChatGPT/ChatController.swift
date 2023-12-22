//
//  ChatController.swift
//  HowToMakeAnAIChatBotInSwiftUIWithChatGPT
//
//  Created by test on 22.12.2023.
//

import OpenAI
import Foundation

class ChatController: ObservableObject {
    @Published var messages: [Message] = [
        .init(content: "Hello", isUser: true),
        .init(content: "Hello", isUser: false),
    ]
    
    let openAI = OpenAI(apiToken: "<your OpenAI token>")
    
    func sendMessage(content: String) {
        let userMessage = Message(content: content, isUser: true)
        self.messages.append(userMessage)
    }
    
    func getBotReply() {
        openAI.chats(query: .init(model: .gpt3_5Turbo, messages: self.messages.map({Chat(role: .user, content: $0.content)}))) { result in
            switch result {
            case .success(let success):
                guard let choice = success.choices.first else {
                    return
                }
                let message = choice.message.content
                DispatchQueue.main.async {
                    self.messages.append(Message(content: message ?? "", isUser: false))
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
