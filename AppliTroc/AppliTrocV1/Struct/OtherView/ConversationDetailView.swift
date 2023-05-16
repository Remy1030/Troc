import SwiftUI

struct ConversationDetailView: View {
    @State private var write: String = ""
    @State private var messages: [String] = []
    var conv: ConvList
    var body: some View {
        VStack{
            
            HStack{
                Image(conv.user.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding()
            
                VStack(alignment: .leading){
                    Text(conv.user.toString())
                    Text(conv.annonce.annonceTitle)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            Spacer()
            HStack {
                TextField("Aa",text: $write, axis: .vertical)
                    .padding()
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray))
                .frame(width:300, height:100)
                
                Button {
                    sendMessage()
                } label: {
                    Image(systemName:"paperplane.fill")
                        .foregroundColor(Color("kaki"))
                        .imageScale(.large)
                    }
                }
            }
        }
    func sendMessage() {
        guard !write.isEmpty else { return }
        
        messages.append(write)
        write = ""
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationDetailView(conv: ConvList(user: User(firstName: "grh", lastName: "frbbg", age: 23, adress: "efj", img: "chloe", location: "", date: "", service: Service(annonceTitle: "hh", productOffered: [ProductOffered(name: "frg")], desiredService: [DesiredService(name: "fgrgr")])), annonce: Service(annonceTitle: "feun", productOffered: [ProductOffered(name: "ggrgr")], desiredService: [DesiredService(name: "dvvf")])))
    }
}
