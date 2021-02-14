//
//  UserListView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 13/02/21.
//

import SwiftUI

struct UserListView: View {
    @State var isShowingEngineerOnly = false

    private var filteredEngineer: [UserModel] {
        return users.filter { user in
            isShowingEngineerOnly ? user.designation == "Engineer" : true
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $isShowingEngineerOnly) {
                    Text("Engineer Only")
                }

                ForEach(filteredEngineer, id: \.self) { user in
                    NavigationLink(
                        destination: UserDetailView(currentUser: user)) {
                        UserListRow(user: user)
                    }
                }
            }
            .navigationTitle("Users")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            UserListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
