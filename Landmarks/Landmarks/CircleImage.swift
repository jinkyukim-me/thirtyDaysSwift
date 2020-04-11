//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jinkyu Kim on 2020/04/11.
//  Copyright © 2020 Jinkyu Kim. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("yangjae")
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
