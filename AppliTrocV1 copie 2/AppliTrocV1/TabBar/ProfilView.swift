import SwiftUI

struct ProfilView: View {
    @State private var showingSheet = false
    @State private var isPopUp = false
    @Namespace var namespace
    @State private var description: String = ""
    @State var isRightMenuVisible:Bool = false
    
    var body: some View {
        
        ZStack {
            
                
            VStack(alignment: .leading){
                
                BaniereProfilView(lastName: users[0].lastName, firstName: users[0].firstName, age: 23, adress: users[0].adress, img: users[0].img)
                    .overlay(alignment: .topTrailing) {
                        if !isRightMenuVisible {
                            Button {
                                isPopUp = true
                                
                            }
                            
                        label: {
                            
                            //
                            Image(systemName: "gearshape")
                                .font(.system(size:35))
                                .foregroundColor(.white)
                            
                            
                                .padding()
                                .padding(.top, 5.0)
                        }
                        .sheet(isPresented: $isPopUp) {
                            SettingsView()
                        }
                        }
                    }
                ScrollView{
                    VStack (alignment: .leading) {
                        Text("Bonjour, je  m’appelle Chloé, je suis Productrice sur Toulouse. On cultive de nombreux légumes et fruits certifiés en agriculture biologique. Nous proposons entre autres des oignons, tomates, betteraves, mais aussi melons et fraises. Nous sommes une petite entreprise familiale, c’est pour cela que nous aimons pratiquer le Troc. Nous avons de temps en temps besoin de renfort sur l’entretien de nos parcelles, ou comme le mois dernier nous avons eu besoin d’aide pour la réparation de notre tracteur. N’hésitez pas a proposer vos service en fonction de vos compétences")
                        //                    .lineLimit(5)
                        //                    .padding([.leading, .bottom, .trailing], 30.0)
                        //                    .onChange(of: description) { newValue in
                        //                        maxtText()
                            .padding([.top, .leading, .bottom, .trailing], 15.0)
                        
                        Text("Historique des services")
                            .bold()
                            .padding([.top, .leading, .bottom], 15.0)
                        
                        ForEach(serviceDone){ service in
                            Text(service.annonceTitle)
                            
                        ForEach(service.desiredService){
                                ser in
                                Text(ser.name)
                                    .foregroundColor(.gray)
                                
                            }
                        
                            Divider()
                        }
                        .padding(.leading, 15.0)
                    }
                }
                
                Spacer()
                
            }
            
        }
    }
}

//            func maxtText() {
//                if description.count > 300 {
//                        description = String(description.prefix(300))
//                    }
//                }
//        }

        struct ProfilView_Previews: PreviewProvider {
            static var previews: some View {
                ProfilView()
            }
        }
