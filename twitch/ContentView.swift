//
//  ContentView.swift
//  twitch
//
//  Created by 손보석 on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    let url = "https://www.twitch.tv"
    @State private var isLaunch = false
    
    var body: some View {
        Group {
            if isLaunch {
                VStack {
                    WebView(url: URL(string: url)!)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                LaunchView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                isLaunch = true
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
