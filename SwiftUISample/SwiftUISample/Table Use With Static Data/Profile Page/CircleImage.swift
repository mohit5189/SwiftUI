//
//  CircleImage.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 13/02/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 4.0))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("user1"))
    }
}
