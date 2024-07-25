import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View{
        HStack{
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: contacts[1])
    }
}
