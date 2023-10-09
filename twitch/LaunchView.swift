//
//  LaunchView.swift
//  twitch
//
//  Created by 손보석 on 10/9/23.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    LaunchView()
}
