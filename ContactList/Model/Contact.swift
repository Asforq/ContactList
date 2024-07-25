import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}
