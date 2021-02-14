import SwiftUI

struct UserListRow: View {
    var user: UserModel

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                user.image
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                VStack(alignment: .leading) {
                    Text(user.name)
                    Text(user.designation)
                }
                .foregroundColor(Color.black)
            }
            .padding()
            Text(user.about)
                .lineLimit(1)
                .padding(.top, -10)
                .padding([.leading, .trailing, .bottom], 20)
                .foregroundColor(Color.gray)
        }
        .background(Color(UIColor.lightGray))
        .cornerRadius(10)
        .padding([.leading, .trailing], 20)
    }
}

struct UserListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            UserListRow(user: users[0])
            UserListRow(user: users[1])
            UserListRow(user: users[2])
        }
        .previewLayout(.fixed(width: 375, height: 130))
    }
}
