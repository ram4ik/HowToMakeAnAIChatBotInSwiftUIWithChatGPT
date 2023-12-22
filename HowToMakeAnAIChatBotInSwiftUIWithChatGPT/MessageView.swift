//
//  MessageView.swift
//  HowToMakeAnAIChatBotInSwiftUIWithChatGPT
//
//  Created by test on 22.12.2023.
//

import SwiftUI

struct MessageView: View {
    var message: Message
    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    Text(message.content)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            } else {
                HStack {
                    Text(message.content)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                    Spacer()
                }
            }
        }
    }
}
