import SwiftUI

struct BulleChatView: View {
    let message: String
    let isCurrentUser: Bool
    var body: some View {
        

            HStack {
                        if isCurrentUser {
                            Spacer()
                            Text(message)
                                .padding(10)
                                .background(Color("kaki"))
                                .foregroundColor(.white)
                                .cornerRadius(10)

                        } else {
                            Text(message)
                                .padding(10)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            Spacer()
                        }
                    }
            .padding(.horizontal, 10)
    }
}

struct BulleChatView_Previews: PreviewProvider {
    static var previews: some View {
        BulleChatView(message: "jbskdzefaz", isCurrentUser: true)
    }
}
