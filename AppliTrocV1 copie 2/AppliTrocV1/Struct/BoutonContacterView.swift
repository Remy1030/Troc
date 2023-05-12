import SwiftUI


struct boutonView: View {
    var body: some View {
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200.0, height: 50.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("kaki")/*@END_MENU_TOKEN@*/)
            Text("Contacter")
                .foregroundColor(.white)
                
        }
    }
}

struct boutonView_Previews: PreviewProvider {
    static var previews: some View {
        boutonView()
    }
}
