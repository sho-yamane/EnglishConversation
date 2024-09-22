//
//  ContentView.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MainWindow: View {
    
    @State private var selectedPage: PageType? = .home

    var body: some View {
        NavigationSplitView {
            List(PageType.allCases, id: \.self, selection: $selectedPage) { page in
                HStack {
                    Image(systemName: page.iconName)
                    Text(page.title)
                }
            }
            .navigationTitle("Vision English")
        } detail: {
            switch selectedPage {
            case .home:
                Text("Home")
                    .font(.system(size: 100, weight: .heavy))
            case .setting:
                Text("Setting")
                    .font(.system(size: 100, weight: .heavy))
            case .none:
                Text("Error")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    MainWindow()
        .environment(AppModel())
}
