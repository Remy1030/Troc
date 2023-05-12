import SwiftUI

struct ListItemsView: View {
    //    @State private var isToggled = false
    @State private var isSwitchOn = false
    
    @State var togglelists = [
        ToggleList(items: "Alimentation", switchOn: false),
        ToggleList(items: "Electricité", switchOn: false),
        ToggleList(items: "Culture Agricole", switchOn: false),
        ToggleList(items: "Garde D'Enfants", switchOn: false),
        ToggleList(items: "Bricolage", switchOn: false),
        ToggleList(items: "Ménage", switchOn: false),
        ToggleList(items: "Assistance Comtabilité", switchOn: false),
        ToggleList(items: "Assistance Juridique", switchOn: false),
        ToggleList(items: "Mécanique", switchOn: false),
        ToggleList(items: "Autre", switchOn: false)
    ]
    
    
    var body: some View {
        
        ZStack {
            Color("kaki")
                .opacity(0.6)
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .frame(width: 350, height: 700)
            
            VStack {
                Text("Je Recherche...")
                    .bold()
                    .font(.system(size: 20))
                Divider()
                
                ForEach(0..<togglelists.count, id: \.self) { index in
                    
                    Toggle(isOn: $togglelists[index].switchOn) {
                        Text(togglelists[index].items)
                    }.tint(Color("kaki"))
                    Divider()

                }
                
                
                
                
                .frame(width: 300, height: 20)
                
            }
        }
        
    }
    
}

struct ListitemsView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemsView()
    }
}
