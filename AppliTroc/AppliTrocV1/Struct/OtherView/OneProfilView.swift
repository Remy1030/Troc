//
//  OneProfilView.swift
//  ListView
//
//  Created by Apprenant 08 on 04/05/2023.
//

import SwiftUI

struct OneProfileView: View {
    var title: String
    var location: String
    var date: String
    var img:String
    var body: some View {
        HStack {
 
                        Image(img)
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            
                    
            VStack (alignment: .leading) {
                        Text(title)
                            
                            
                        
                            Text(location)
                                .foregroundColor(.gray)
                                .font(.system(size: 13))
                        Text(date)
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
//                Text(startDescription)
//                    .foregroundColor(.gray)
//                    .font(.system(size: 13))

                    }
                }

            }
        }
    


struct OneProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OneProfileView(title: "Panier de fruits et légumes", location: "Montauban", date: "30 Octobre 2023", img: "chloe")
    }
}


//"Je propose des tomates, carottes, salades"
//"Désherber une allée"
