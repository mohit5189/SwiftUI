//
//  UserListScrollView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 14/02/21.
//

import SwiftUI

struct UserListScrollView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(users, id: \.self) { user in
                        NavigationLink(destination: UserDetailView(currentUser: user)) {
                            UserListRow(user: user)
                        }
                    }
                    Text("Loading More...")
                        .onAppear {
                            print("reached to last")
                        }
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct UserListScrollView_Previews: PreviewProvider {
    static var previews: some View {
        UserListScrollView()
    }
}
