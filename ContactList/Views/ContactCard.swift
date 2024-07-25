import SwiftUI

struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        ZStack{
            Color(.yellow).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image(contact.imageName)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
                    .frame(width: 250, height: 400)
                    
                Text(contact.name)
                    .padding(.top, -30)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                
                InfoView(text: contact.email, imageName: "envelope.fill")
                InfoView(text: contact.phone, imageName: "phone.fill")
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
