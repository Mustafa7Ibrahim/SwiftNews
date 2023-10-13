//
//  BreakingNewsModel.swift
//  SwiftNews
//
//  Created by Mustafa Ibrahim on 13/10/2023.
//

import Foundation

struct BreakingNewsModel: Identifiable {
    let id: UUID
    let title: String
    let Image: URL
    let sourceImage: URL
    let SourceName: String
    
    init(id: UUID = UUID(), title: String, Image: URL, sourceImage: URL, SourceName: String) {
        self.id = id
        self.title = title
        self.Image = Image
        self.sourceImage = sourceImage
        self.SourceName = SourceName
    }
}

extension BreakingNewsModel {
    static let fakeData: [BreakingNewsModel] = [
        BreakingNewsModel(
            title: "this is fake",
            Image: URL(string: "https://picsum.photos/200")!,
            sourceImage: URL(string: "https://picsum.photos/200")!,
            SourceName: "this is"
        ),
        BreakingNewsModel(
            title: "this is fake",
            Image: URL(string: "https://picsum.photos/200")!,
            sourceImage: URL(string: "https://picsum.photos/200")!,
            SourceName: "this is"
        ),
        BreakingNewsModel(
            title: "this is fake",
            Image: URL(string: "https://picsum.photos/200")!,
            sourceImage: URL(string: "https://picsum.photos/200")!,
            SourceName: "this is"
        ),
        BreakingNewsModel(
            title: "this is fake",
            Image: URL(string: "https://picsum.photos/200")!,
            sourceImage: URL(string: "https://picsum.photos/200")!,
            SourceName: "this is"
        ),
        BreakingNewsModel(
            title: "this is fake",
            Image: URL(string: "https://picsum.photos/200")!,
            sourceImage: URL(string: "https://picsum.photos/200")!,
            SourceName: "this is"
        ),
    ]
}
