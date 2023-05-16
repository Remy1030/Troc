import SwiftUI

struct LoadingScreenContentView: View {
    @State var isActive:Bool=false
    var body: some View {
        ZStack{
            if isActive{
                FirstView()
            }
            else{
                Color("kaki")
                    .edgesIgnoringSafeArea(.all)
                Image("logo")
            }
            
        }
        .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
        
    }
}

struct LoadingScreenContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenContentView()
    }
}
