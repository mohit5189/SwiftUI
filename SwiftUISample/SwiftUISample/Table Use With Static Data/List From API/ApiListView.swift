//
//  ApiListView.swift
//  SwiftUISample
//
//  Created by Mohit Kumar on 14/02/21.
//

import SwiftUI

struct ApiListView: View {
    @State var isAnimating = true
    @State var email: String = ""

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("user1")
                    .resizable()
                    .padding(.top, 100)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text("Mohit Kumar")
                    .font(.title)
                    .padding(.top, 20)
                Text("Details goes here")
                    .font(.subheadline)
                    .padding(.bottom, 100.0)
                    .padding(.top, 10)
                Spacer()
                ZStack(alignment: .top) {
                    Rectangle()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    VStack {
                        TextField("Enter Email", text: $email)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(5.0)
                            .padding([.leading, .trailing], 20)
                            .padding(.top, 100)

                        TextField("Enter Password", text: $email)
                            .padding()
                            .background(Color(.white))
                            .cornerRadius(5.0)
                            .padding([.leading, .trailing, .top], 20)

                        Button(action: {}, label: {
                            Text("Login Now")
                                .foregroundColor(.red)
                                .padding([.top, .bottom], 20)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color.init(UIColor.lightGray))
                        })
                        .cornerRadius(10)
                        .padding([.leading, .trailing, .top], 20)
                    }
                }
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
        }    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct ApiListView_Previews: PreviewProvider {
    static var previews: some View {
        ApiListView()
    }
}
