import SwiftUI

struct MessageView: View {
    var body: some View {
        NavigationStack {
        
            
               
            
            
            VStack (alignment: .leading){
                    
                    ForEach(conversations){ conversation in
                        
                            NavigationLink{
                                MessageDetailView(user: conversation.user)}
                    label: {
                                VStack(alignment: .leading){
                                    HStack {
                                        Image(conversation.user.img)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .frame(width: 70,height: 70)
                                            VStack (alignment: .leading) {
                                                Text(conversation.user.toString())
                                                Text(conversation.annonce.annonceTitle)
                                            
                                        }
                                            .foregroundColor(.black)
                                    }
                                    Divider()
                                }.navigationBarTitle("Messages")
                                
                        }
                        }
                        }
                    
                Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
