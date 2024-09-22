//
//  GeminiRepository.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import GoogleGenerativeAI
import Foundation

final class GeminiRepository {
    let model = GenerativeModel(
        name: "gemini-pro",
        apiKey: "",
        generationConfig: GenerationConfig(temperature: 1, maxOutputTokens: 1000)
    )
}
