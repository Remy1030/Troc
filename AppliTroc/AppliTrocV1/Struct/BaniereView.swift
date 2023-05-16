import SwiftUI

struct BaniereProfilView: View {
    var lastName: String
    var firstName: String
    var age: Int
    var adress: String
    var img: String
    var body: some View {
        
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("kaki"))
                    .frame(height: 150)
                
                HStack {
                    
                    Image(img)
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 130,height: 130)
                        .padding(.horizontal, 10)
                    VStack (alignment:.leading) {
                        Text(lastName)
                            .padding(1)
                        Text(firstName)
                            .padding(1)
                        Text("\(age)")
                            .padding(1)
                        Text(adress)
                            .padding(1)
                    }.foregroundColor(.white)
                    
                    
                    Spacer()
                }
            }
        }
    }
}

struct BaniereProfilView_Previews: PreviewProvider {
    static var previews: some View {
        BaniereProfilView(lastName: "chou", firstName: "adibou", age: 0, adress: "hhhh", img: "chloe")
    }
}
