//
//  BreakingNews.swift
//  SwiftNews
//
//  Created by Mustafa Ibrahim on 13/10/2023.
//

import SwiftUI
import URLImage

struct BreakingNews: View {
    @Binding var breakingNews: [BreakingNewsModel]
    
    var body: some View {
        VStack{
            HStack{
                Text("Breaking News").font(.title2)
                Spacer()
                Button("Show more", action: {})
                    .opacity(0.4)
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(0..<$breakingNews.count) { index in
                        URLImage(breakingNews[index].Image){ image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width - 50, height: 215)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .padding(
                                    .leading,
                                    index != 0 || index == breakingNews.count - 1 ? 6 :0
                                )
                                .padding(.trailing, index == breakingNews.count - 1 ? 14 : 0)
                                .padding(.leading, index == 0 ? 14 : 0)
                        }
                    }
                }
            }
            .frame(height: 215)
            
        }
        
    }
}

#Preview {
    BreakingNews(breakingNews: .constant(BreakingNewsModel.fakeData))
}
