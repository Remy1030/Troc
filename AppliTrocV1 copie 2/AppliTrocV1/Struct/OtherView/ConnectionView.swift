import SwiftUI

struct Connexion: View {
    @State var listScreen = false
    @State private var nom: String = ""
    @State private var prenom: String = ""
    @State private var age: String = ""
    @State private var profession: String = ""
    @State private var telephone: String = ""
    @State private var mail: String = ""
    @State private var adresse: String = ""
    @State private var mdp: String = ""
    @State private var cmdp: String = ""
    var body: some View {
        VStack {
          
            Picker(selection : $listScreen , label: Text("")){
                Text ("Inscription" ).tag (false)
                Text ("Connexion").tag(true)
                
                
            }.frame(width: 320.0).pickerStyle(SegmentedPickerStyle())
            
            
            if listScreen{
                Button{
                
                }label: {
                    InscriptionView()
             
                   
                  
                }
            } else{
                HStack{
                    Button {
                        
                    } label: {
                        Image("apple")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                    } .padding()
                    Button {
                        
                    } label: {
                        Image("google")
                            .resizable()
                            .frame(width: 50.0, height: 55.0)
                    }  .padding()
                    Button {
                        
                    } label: {
                        Image("facebook")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                    }  .padding()
                    
                    
                }; Divider()
                
                    .frame(width: 250.0)
                
                VStack {
                    TextField("Nom ",text: $nom)
                        .padding([.top, .leading], 20.0)
                    
                    TextField("Prénom",text: $prenom)
                        .padding(.leading, 20.0)
                    
                    
                    TextField("Age",text: $age)
                        .padding(.leading, 20.0)
                    
                    TextField("Profession",text: $profession)
                        .padding(.leading, 20.0)
                    
                    TextField("Télephone",text: $telephone)
                        .padding(.leading, 20.0)
                    
                    TextField("Mail",text: $mail)
                        .padding(.leading, 20.0)
                    
                    TextField("Adresse",text: $adresse)
                        .padding(.leading, 20.0)
                    
                    TextField("Mot de passe ",text: $mdp)
                        .padding(.leading, 20.0)
                    
                    TextField("Confirmer le mot de passe",text: $cmdp)
                        .padding(.leading, 20.0)
                    
                }
                Spacer()
                
                Spacer()
                Button {
                    print("inscription")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200.0, height: 50.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("kaki")/*@END_MENU_TOKEN@*/)
                        Text("Inscription")
                            .foregroundColor(.white)
                    }
                    
                    
                    
                }
                Spacer()
                
            }
        }.padding(.top, 60.0)
       
        
    
      
    } }
    


struct Connexion_Previews: PreviewProvider {
    static var previews: some View {
        Connexion()
    }
}
