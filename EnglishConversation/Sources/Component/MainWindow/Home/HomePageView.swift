//
//  HomePageView.swift
//  EnglishConversation
//
//  Created by Sho Yamane on 2024/09/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct HomePageView: View {
    @Environment(SharedViewModel.self) private var sharedViewModel
    
    private let columns = [GridItem(.adaptive(minimum: 200))]
    private let selected: (ProgramDataSet) -> Void
    
    init(selected: @escaping (ProgramDataSet) -> Void) {
        self.selected = selected
    }
    
    var body: some View {
        @Bindable var sheredViewModel = sharedViewModel
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(sharedViewModel.situationContents, id: \.self) { situationContent in
                    ProgramCollectionItemView(dataSet: situationContent)
                        .onTapGesture {
                            selected(situationContent)
                        }
                }
            }
            .padding(.all)
        }
    }
}

#Preview(windowStyle: .automatic) {
    HomePageView(selected: {_ in})
}
