//
//  GeminiRepository.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import GoogleGenerativeAI
import Foundation

final class GeminiRepository {
    let model: GenerativeModel

    init() {
        guard let apiKey = Bundle.main.infoDictionary?["GEMINI_API_KEY"] as? String else {
            fatalError("GEMINI_API_KEY not found in Info.plist")
        }

        self.model = GenerativeModel(
            name: "gemini-pro",
            apiKey: apiKey,
            generationConfig: GenerationConfig(temperature: 1, maxOutputTokens: 1000)
        )
    }
    
    public func request(allMessages: [ModelContent], sendMessage: String) async throws -> String {
        do {
            let chat = model.startChat(history: allMessages)
            let response = try await chat.sendMessage(sendMessage)
            return response.text ?? ""
        } catch {
            throw error
        }
    }
}
