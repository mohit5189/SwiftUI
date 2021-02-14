//
//  ApiListView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 14/02/21.
//

import SwiftUI

struct ApiListView: View {
    @State var isAnimating = true

    var body: some View {
        NavigationView {
            VStack {
                if isAnimating {
                    SpinnerView()
                } else {
                    Text("Hello")
                }
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.isAnimating = false
            }
        })
    }
}

struct ApiListView_Previews: PreviewProvider {
    static var previews: some View {
        ApiListView()
    }
}
