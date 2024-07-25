import SwiftUI

struct InfoView: View {
    var text: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.red)
            Text(text)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule())
        .padding(20)
    }
}

struct InfoView_Provider: PreviewProvider {
    static var previews: some View {
        InfoView(text: "gauakanguyen@gmail.com", imageName: "envelope.fill")
            .background(Color.blue)
    }
}
