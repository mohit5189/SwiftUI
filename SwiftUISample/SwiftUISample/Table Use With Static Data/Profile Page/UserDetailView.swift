//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 13/02/21.
//

import SwiftUI

struct UserDetailView: View {
    var currentUser: UserModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    CircleImage(image: currentUser.image)
                    Spacer()
                }

                Text(currentUser.name)
                    .font(.headline)
                    .foregroundColor(Color.blue)
                    .padding(.top, 15.0)
                HStack {
                    Text("Designation")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text(currentUser.designation)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                }
                Divider()
                Text(currentUser.about)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }
            .padding(20)
        }
        .navigationTitle(currentUser.name)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(currentUser: users[0])
    }
}
