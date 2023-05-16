import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isPopUp = false
    @State private var searchText = ""
    @State private var sliderValue: Double = 0
    @State private var showToast: Bool = false
    
    
    var body: some View {
        
        ZStack{
            Color("kaki")
                .opacity(0.6)
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .frame(width: 350, height: 700)
            
            VStack {
                Button{
                    isPopUp = true
                    
                } label: {
                    Text("Je recherche...")
                        .foregroundColor(.black)
                        .padding(.bottom)
                        .padding(.trailing, 170)
                    Image(systemName: "chevron.right.circle.fill")
                        .foregroundColor(.gray)
                        .padding(.bottom, 3)
                        .padding(.trailing, 10)
                    //                    Divider()
                    
                }
                .sheet(isPresented: $isPopUp){
                    ListItemsView()
                    
                }
                Divider()
                
                Text("Geolocalisation")
                
                    .padding(.bottom, 4)
                    .padding(.trailing, 210)
                Divider()
                ZStack {
                    TextField("Saississez une ville", text: $searchText, onEditingChanged: { isEditing in
                        if isEditing {
                        } else {
                        }
                    })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 3)
                    .padding(.trailing, 0)
                    .frame(width: 340, height: 80)
                    
                    Image(systemName: "magnifyingglass.circle.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                        .padding(.bottom, 3)
                        .padding(.leading, 280)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 50)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.843)/*@END_MENU_TOKEN@*/)
                    Text("Toulouse")
                        .padding(.trailing, 30)
                    
                    Image(systemName: "trash.circle.fill")
                        .padding(.leading, 70)
                        .foregroundColor(.gray)
                    
                }
                .padding(.bottom)
                .padding(.trailing, 200)
                
                VStack {
                    Slider(value: $sliderValue, in: 0...200)
                        .frame(width: 300)
                    Text("Dans un rayon de \(Int(sliderValue)) km ")
                        .font(.system(size: 13))
                }.tint(Color("kaki"))
                .padding()
                
                
                Spacer()
            }
            .padding(.top, 70)
            
            VStack {
                Spacer()
                Button {
                    showToast = true
                } label: {
                    BoutonValiderView()

                }
                
                .padding(.bottom, 150)
                
            }
            .overlay{
                VStack{
                    if showToast {
                        ZStack{
                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .fill(.ultraThinMaterial)
                                .frame(width: 200, height: 200)
                            VStack{
                                Image(systemName: "checkmark")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color("kaki"))
                                    .padding()
                                
                                Text("Informations Validées")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("kaki"))
                            }
                        }
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                withAnimation {
                                    showToast = false
                                }
                            }
                        }
                    }
                }
            }        }
    }
    
    
    
}



struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
