import SwiftUI

struct InscriptionView: View {
    @State var listScreen = false
    @State private var mail: String = ""
    @State private var password: String = ""
    @State private var profession: String = ""
    var body: some View {
        VStack {
           
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
            TextField("Mail",text: $mail)
                .padding([.top, .leading], 20.0)
              
            TextField("Mot de passe",text: $password)
                .padding(.leading, 20.0)

            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200.0, height: 50.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("kaki")/*@END_MENU_TOKEN@*/)
                    Text("Connexion")
                        .foregroundColor(.white)
            }

          
                
            }
            Spacer()
        }.padding(.top, 60.0)
            
        }
    }

struct InscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView()
    }
}
