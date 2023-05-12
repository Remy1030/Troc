import SwiftUI

struct PickerMessageView: View {
    @Binding var picker: Int
    var firstView: String
    var secondView: String
    
    var body: some View {
        Picker(selection : $picker , label: Text("")){
            Text (firstView ).tag (0)
            Text (secondView).tag(1)
        }
        .pickerStyle(SegmentedPickerStyle())
        .frame(width: 300, height: 70)
        
    }
}

struct PickerMessageView_Previews: PreviewProvider {
    static var previews: some View {
        PickerMessageView(picker: .constant(0), firstView: "Messages", secondView: "Notifs")
    }
}

//.constant(0) liaison avec fausse variable constante

