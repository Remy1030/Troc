import SwiftUI

struct AnnonceView: View {
    var user: User
    var body: some View {
        
        
        
        NavigationStack {
            
            VStack {
                
                BaniereProfilView(lastName: user.lastName, firstName: user.firstName, age: 23, adress: user.adress, img: user.img)
                
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Produits Proposés")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 0)
                        .padding(.bottom)
                    
                    
                    ForEach(user.service.productOffered){ produit in
                        Text(produit.name)
                        Divider()
                        
                    }
                }
                .padding(.leading, 15.0)
                
                Spacer()
                
                
                VStack(alignment: .leading) {
                    Text("Services Souhaités")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        .padding(.leading)
                    
                    
                    
                    ForEach(user.service.desiredService){ service in
                        Text(service.name)
                        Divider()
                        
                    }
                    .padding(.leading)
                }
                .padding(.bottom, 50)
                
                VStack {
                    
                    
                    NavigationLink {
                        MessageDetailView(user: user)
                    } label: {
                        boutonView()
                    }

                    

                }
                
            }
            
        }
    }
    
    
}


struct AnnonceView_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceView(user: users[0])
        
    }
}
