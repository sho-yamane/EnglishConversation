//
//  ProgramCollectionItemView.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import SwiftUI

struct ProgramCollectionItemView: View {
    private var dataSet: ProgramDataSet
    
    init(dataSet: ProgramDataSet) {
        self.dataSet = dataSet
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(dataSet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
                .clipped()
                .cornerRadius(8)
                .padding(8)
            Text(dataSet.title)
                .font(.system(size: 16, weight: .bold))
                .padding(.horizontal, 8)
                .padding(.bottom, 2)
                .lineLimit(1)
            Text(dataSet.description)
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .padding(.horizontal, 8)
                .lineLimit(1)
        }
        .padding(8)
        .contentShape(.interaction, .rect)
        .contentShape(.hoverEffect  , .rect(cornerRadius: 16))
        .hoverEffect()
    }
}

#Preview {
    ProgramCollectionItemView(
        dataSet: ProgramDataSet(
            id: "s1",
            title: "カフェで注文しよう",
            description: "あなたが訪れたのはニューヨークの人気カフェ、飲み物や食べ物の注文をしてみましょう！",
            imageName: "cafe",
            difficulty: 1,
            talkPromptData: TalkPromptDataModel(
                prompt: "You are a barista and I am a customer ordering drinks and snacks at the New York Cafe, which has its own on-site bakery.",
                firstMessage: "Welcome, would you like to order?"
            )
        )
    )
}
