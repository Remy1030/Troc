import SwiftUI

struct MessageDetailView: View {
    @State private var write: String = ""
    @State private var messages: [String] = []
    var user: User
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("kaki"))
                   .frame(height: 150)
                HStack{
                    Image(user.img)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        VStack(alignment: .leading){
                            Text(user.toString())
//                            Text("\(user.service)
                                
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                }
            ForEach(messages, id: \.self){
                message in
                BulleChatView(message: message, isCurrentUser: true)
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

struct MessageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MessageDetailView(user: users[0])
    }
}
