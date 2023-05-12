import SwiftUI

struct FirstView: View {
    var body: some View {
        
        
        TabView {
        
        ListView()
            .tabItem {
                Label("Annonces", systemImage: "map")
            }
        
        NotifMessageView()
            .tabItem {
                Label("Messages", systemImage: "bubble.right")
            }
        ProfilView()
            .tabItem {
                Label("Profil", systemImage: "person")
            }
        
        
        }.accentColor(Color("kakifoncé"))
                      }
                      
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
