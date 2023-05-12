import SwiftUI

struct NotifMessageView: View {
    @State var picker: Int = 0
    var body: some View {
        
        NavigationStack {
            VStack {
                PickerClaraView(picker: $picker, firstView: "Messages", secondView: "Notifications")
                  
                    
                    
                    
                    if picker == 1 {
                        NotifView()
                    }else{
                        MessageView()
                    }
            }
        }
        }
    }


struct PickerEtatMessage_Previews: PreviewProvider {
    static var previews: some View {
        NotifMessageView()
    }
}
