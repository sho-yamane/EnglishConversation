//
//  File.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

public struct TalkPromptDataModel: Hashable, Codable {
    var prompt: String
    var firstMessage: String
    
    init(prompt: String, firstMessage: String) {
        self.prompt = prompt
        self.firstMessage = firstMessage
    }
}
