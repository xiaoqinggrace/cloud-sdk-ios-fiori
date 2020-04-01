//
//  ContentView.swift
//  DevTest
//
//  Created by Stadelman, Stan on 1/22/20.
//  Copyright © 2020 sstadelman. All rights reserved.
//

import SwiftUI
import ObservableArray
import FioriIntegrationCards

extension String: Identifiable {
    public var id: String {
        return self
    }
}

extension Card: View {
    public var body: some View {
        return makeView()
            .frame(maxWidth: 425, alignment: .topLeading)
    }
    
    func makeView() -> AnyView {
        switch self {
        case .object(let card):
            return AnyView(ObjectCardView(model: card))
        case .list(let card):
            return AnyView(ListCardView(model: card))
        case .table(let card):
            return AnyView(TableCardView(model: card))
        case .timeline(let card):
            return AnyView(TimelineCardView(model: card))
        case .analytical(let card):
            return AnyView(AnalyticalCardView(model: card))
        }
    }
}

struct ContentView: View {
        
    let cards: [String]
    let collectionCards = ["LowCode", "LowCode"]//, "object", "object"]
    
    var body: some View {
        NavigationView() {
            VStack(alignment: .leading) {
                
                List(cards) { card in
                    NavigationLink(destination: self.makeBody(self.getManifest(for: card)!)) {
                        Text(card)
                    }
                }
                List(["CollectionView"]) { _ in
                    NavigationLink("HW", destination: CollectionView<[Card], Card>(data: self.cards.compactMap({ self.getManifest(for: $0)?.card }), layout: flowLayout(for:containerSize:sizes:), content: { $0 }))
                }
            }
        }
    }
    
    func makeBody(_ model: Manifest) -> AnyView {
        
        switch model.card {
        case .list(let value):
            return AnyView(ListCardView(model: value))
        case .object(let value):
            return AnyView(ObjectCardView(model: value))
        case .table(let value):
            return AnyView(TableCardView(model: value))
        case .timeline(let value):
            return AnyView(TimelineCardView(model: value))
        case .analytical(let value):
            return AnyView(AnalyticalCardView(model: value))
        }
    }
    
    func getManifest(for card: String) -> Manifest? {
        do {
            let data = try Data(contentsOf: Bundle.main.url(forResource: card, withExtension: "json")!)
            let model = try JSONDecoder().decode(Manifest.self, from: data)
            return model
        } catch {
            print(error)
        }
        return nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        EmptyView()
    }
}
