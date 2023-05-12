import SwiftUI

struct BoutonValiderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200.0, height: 50.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("kaki")/*@END_MENU_TOKEN@*/)
            Text("Valider")
                .foregroundColor(.white)
                
        }    }
}

struct BoutonValiderView_Previews: PreviewProvider {
    static var previews: some View {
        BoutonValiderView()
    }
}
