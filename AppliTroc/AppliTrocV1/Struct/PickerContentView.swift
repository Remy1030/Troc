import SwiftUI

struct PickerContentView: View {
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

struct pickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerContentView(picker: .constant(0), firstView: "Carte", secondView: "Liste")
    }
}

//.constant(0) liaison avec fausse variable constante

