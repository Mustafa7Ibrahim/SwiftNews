//
//  ContentView.swift
//  SwiftNews
//
//  Created by Mustafa Ibrahim on 12/10/2023.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    @State private var breakingNews = BreakingNewsModel.fakeData
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    BreakingNews(breakingNews: $breakingNews)
                    
                    RecomendedForYou(breakingNews: $breakingNews)
                }
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button(action: {}){
                            Image(systemName: "line.3.horizontal")
                                .padding(8)
                                .background(Color.white)
                                .clipShape(Circle())
                                .padding(6)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(Circle())
                            
                        }
                    }
                    
                    ToolbarItem(placement: .confirmationAction) {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 250)
                                .frame(width: 105)
                                .foregroundColor(Color.gray.opacity(0.1))
                            
                            
                            HStack(spacing: 0) {
                                Button(action: {}) {
                                    Image(systemName: "magnifyingglass")
                                        .padding(8)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                    
                                }
                                
                                Button(action: {}) {
                                    Image(systemName: "bell")
                                        .padding(8)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .badge(1)
                                }
                                
                            }
                        }
                    }
                    
                    
            }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
