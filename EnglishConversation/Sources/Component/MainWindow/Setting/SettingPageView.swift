//
//  SettingPageView.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SettingPageView: View {
    @Environment(SharedViewModel.self) private var model

    var body: some View {
        VStack {
            Text("Setting")
        }
    }
}

#Preview(windowStyle: .automatic) {
    SettingPageView()
}
