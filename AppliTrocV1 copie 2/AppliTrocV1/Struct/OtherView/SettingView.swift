import SwiftUI

struct SettingsView: View {
    @AppStorage("darkMode") private var isDarkModeEnabled = false
    @State private var selectedLanguage = "en"
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Apparence")) {
                    Toggle(isOn: $isDarkModeEnabled) {
                        Text("Mode sombre")
                        
                        
                    }
                }.tint(Color("kaki"))
                
                Section(header: Text("Langue")) {
                    Picker(selection: $selectedLanguage, label: Text("Langue")) {
                        Text("Français").tag("fr")
                        Text("English").tag("en")
                        Text("Espagnol").tag("es")
                    }
                    .pickerStyle(.segmented)
                }
                Section {
                    NavigationLink {
                      CharteView()
                    } label: {
                        Text("Confidentialité")
                            .foregroundColor(.black)
                    }
                
             
                }
                
                Section {
                    NavigationLink {
                       Connexion()
                    } label: {
                        Text("Connexion")
                            .foregroundColor(.black)
                    }
                }
                Section {
                    NavigationLink {
                      
                    } label: {
                        Text("Deconnexion")
                            .foregroundColor(.black)
                    }
                }
              
                Section {
                    Button(action: {
                       
                        
                    }, label: {
                        Text("Réinitialiser les paramètres")
                            .foregroundColor(.red)
                    })
                    
                    
                    
                }
                .navigationTitle("Paramètres")
            }
        }
    }
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

import SwiftUI

struct confi: View {
    var body: some View {
        VStack {
            Text("Lorsque vous utilisez nos services, vous nous faites confiance pour le traitement de vos informations. Nous savons qu'il s'agit d'une lourde responsabilité, c'est pourquoi nous nous efforçons de les protéger, tout en vous permettant d'en garder le contrôle.")
                .padding()
            Text("Nos services vous permettent de gérer la confidentialité de vos données de plusieurs manières. Vous pouvez par exemple créer un compte Google si vous voulez élaborer et gérer du contenu tel que des emails et des photos, ou voir des résultats de recherche plus pertinents. Vous pouvez également utiliser de nombreux services Google sans être connecté, voire même sans avoir créé de compte c'est notamment le cas pour la recherche Google ou le visionnage de vidéos sur YouTube. Vous pouvez aussi naviguer sur le Web en toute discrétion à l'aide du mode navigation privée de Chrome. Tous nos services vous permettent d'ajuster vos paramètres de confidentialité de manière à contrôler les informations que nous collectons et la façon dont nous les utilisons")
                .padding()
        }}
}

struct confi_Previews: PreviewProvider {
    static var previews: some View {
        confi()
    }
}
