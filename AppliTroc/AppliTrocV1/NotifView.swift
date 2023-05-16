import SwiftUI

struct NotifView: View {
    @State var notifs = [
        Notif(userName: users[0], notifContent: "a ajouté une nouvelle annonce !", isRead: false),
        Notif(userName: users[1], notifContent: "a ajouté une nouvelle annonce !", isRead: false)
        
    ]
    
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading){
//                Text("Notifications")
//                    .font(.title)
//                    .bold()
//                    .padding()
                ForEach(Array(notifs.enumerated()), id: \.offset){  index, notif in
                    
                    NavigationLink {
                        AnnonceView(user: notif.userName)
                            .onAppear{
                                notifs[index].isRead = true
                            }
                    } label: {
                        
                        HStack{
                            Image(systemName:"bell.fill")
                            
                                .padding()
                                .foregroundColor(Color("kakifoncé"))
                                .foregroundColor(notif.isRead ? .gray : .black)
                            VStack(alignment: .leading){
                                Text(notif.userName.toString())
                                    .bold()
                                    .foregroundColor(notif.isRead ? .gray : .black)
                                Text(notif.notifContent)
                                    .foregroundColor(notif.isRead ? .gray : .black) // condition ? vrai : faux, remplace un if
                            }
                        }
                    }
                    
                    Divider()
                }
                Spacer()
            }.navigationBarTitle("Notifications")
        }
    }
}

struct NotifView_Previews: PreviewProvider {
    static var previews: some View {
        NotifView()
    }
}
