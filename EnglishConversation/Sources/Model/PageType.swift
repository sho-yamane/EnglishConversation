//
//  Untitled.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

enum PageType: Int, CaseIterable {
    case home
    case setting
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .setting:
            return "Setting"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house"
        case .setting:
            return "gear"
        }
    }
}
