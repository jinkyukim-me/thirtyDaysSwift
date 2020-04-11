//
//  ContentView.swift
//  Landmarks
//
//  Created by Jinkyu Kim on 2020/04/11.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("엘리스 코딩")
                    .font(.title)
                    .foregroundColor(.orange)
                HStack {
                    Text("양재 R&CD 혁신허브").font(.subheadline)
                    Spacer()
                    Text("대한민국").font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
