//
//  TranslateRepository.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import Foundation

final class TranslateRepository {
    private let basePath: String = "API Path"
    private var currentTask: Task<String, Error>?
    
    public func request(text: String, source: String, target: String) async throws -> String {
        currentTask?.cancel()
        currentTask = Task {
            guard let url = URL(string: basePath + "?text=\(text)&source=\(source)&target=\(target)") else {
                throw NSError(domain: "URL error", code: -1)
            }
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "GET"

            guard let (date, urlResponse) = try? await URLSession.shared.data(for: urlRequest) else {
                throw NSError(domain: "URLSession error", code: -1)
            }
            guard let httpStatus = urlResponse as? HTTPURLResponse else {
                throw NSError(domain: "HTTPURLResponse error", code: -1)
            }
            guard let response = String(data: date, encoding: .utf8) else {
                throw NSError(domain: "\(httpStatus.statusCode)", code: -1)
            }
            return response
        }
        return try await currentTask!.value
    }
    
    public func cancelAllRequests() {
        currentTask?.cancel()
    }
}
