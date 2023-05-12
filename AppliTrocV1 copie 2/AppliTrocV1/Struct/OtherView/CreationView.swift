//
//  TestView.swift
//  AppliTrocV1
//
//  Created by Apprenant 08 on 09/05/2023.
//

import SwiftUI

struct CreationView: View {
    @State private var firstName: String = ""
    @State private var name: String = ""
    @State private var profession: String = ""
    @State private var addresse: String = ""
    @State private var disponibilité: String = ""
    @State private var propose: String = ""
    @State private var contre: String = ""
    @State private var date = Date()
    @State private var showToast: Bool = false
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 500.0, height: 180.0)
                    .foregroundColor(Color("kaki"))
                Text("Je créé mon annonce")
                    .font(.title)
                    .foregroundColor(.white)
            }; Spacer()
            Form{
                Section {
                    TextField("Prénom",text: $firstName)
                    TextField("Nom",text: $name)
                    TextField("Profession",text: $profession)
                    TextField("Adresse",text: $addresse)
                    
                   
                    DatePicker("Date", selection: $date)
                        .foregroundColor(.gray)
                }
                    Section {
                        TextField("Je propose",text: $propose)
                       
                    }
             
                    
                    Section {
                        TextField("En contre partie de",text: $contre)
                    }
                   
            }.tint(Color("kaki"))
                
                
            Button {
                showToast=true
            } label: {
                ZStack {
                          RoundedRectangle(cornerRadius: 20)
                              .frame(width: 200.0, height: 50.0)
                              .foregroundColor(Color("kaki"))
                          Text("Valider")
                              .foregroundColor(.white)
                              
                      }
            }

           
        }.overlay{
            if showToast{
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
        }
    }

struct CreationView_Previews: PreviewProvider {
    static var previews: some View {
        CreationView()
    }
}
