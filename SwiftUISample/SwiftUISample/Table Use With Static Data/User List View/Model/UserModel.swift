import Foundation
import SwiftUI

struct UserModel: Hashable, Codable {
    var name: String
    var designation: String
    var about: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
