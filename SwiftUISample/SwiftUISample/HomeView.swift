//
//  HomeView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 14/02/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            UserListScrollView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home 1")
                }
            UserListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home 2")
                }
            ApiListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home 3")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
