import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink() {
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("Contacts")
            }
        }
    }
}

struct ContactList_Provider: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
