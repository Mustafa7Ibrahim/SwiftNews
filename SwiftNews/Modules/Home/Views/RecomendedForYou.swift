//
//  RecomendedForYou.swift
//  SwiftNews
//
//  Created by Mustafa Ibrahim on 13/10/2023.
//

import SwiftUI
import URLImage

struct RecomendedForYou: View {
    @Binding var breakingNews: [BreakingNewsModel]
    
    var body: some View {
        VStack{
            HStack{
                Text("Recommended for you").font(.title2)
                Spacer()
                Button("Show more", action: {})
                    .opacity(0.4)
            }
            .padding()
            
            ScrollView{
                ForEach($breakingNews){ $news in
                    HStack(spacing: 0) {
                        URLImage(news.Image){ image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .padding(.horizontal)
                        }
                        VStack(spacing: 0){
                            HStack{
                                URLImage(news.sourceImage){ image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 18, height: 18)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                }
                                Text(news.SourceName)
                                    .font(.caption)
                                   
                            }
                            Text(news.title)
                        }
                        
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                }
            }
        }
    }
}

#Preview {
    RecomendedForYou(breakingNews: .constant(BreakingNewsModel.fakeData))
}
