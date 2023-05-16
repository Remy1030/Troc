//
//  ListContentView.swift
//  ListView
//
//  Created by Apprenant 08 on 04/05/2023.
//

import SwiftUI

struct ListView: View {
   
    @State private var showingSheet = false
    @State var picker: Int = 0
    var firstView: String = ""
    var secondView: String = ""
//    var User:User
    var body: some View {
        
        NavigationStack{
            VStack{
                
                if picker == 0 {
                    ZStack {
                        MapView()
                        
                        PickerMapView(picker: ($picker), firstView: "Carte", secondView: "Liste")
                            .frame(width: 350)
                            .padding(.bottom,607)
                        
                    }
                }else{
                    
                    ZStack{
                        PickerMapView(picker: ($picker), firstView: "Carte", secondView: "Liste")
                            .frame(width: 350)
                            .padding(.top)
                    }
                    HStack{
                        
                        Text("Annonces")
                            .font(.title)
                            .bold()
                            .padding(.trailing, 150.0)
                        
                        
                        Button {
                            showingSheet.toggle()
                        }label: {
                            ZStack{
                            Circle()
                                .foregroundColor(Color("kaki"))
                                .frame(width: 50, height: 50)

                            
                            
                            Button {
                                showingSheet.toggle()
                                    
                            } label: {
                                    Image(systemName: "slider.horizontal.3")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 40))
                                        .padding()
//
                                }

                            }
                        }
                        .sheet(isPresented: $showingSheet) {
                            SheetView()


                        }
                    }
                    VStack {
                        
                        List(users){ user in
                            
                            
                            NavigationLink {
                                AnnonceView(user: user)
                            } label: {
                                
                                VStack {

                                    OneProfileView(title: user.service.annonceTitle, location: user.location, date: user.date, img: user.img)
                                    
                                }
                            }
                            
                        }.scrollContentBackground(.hidden)
                        
                        HStack{
                        NavigationLink {
                             CreationView()
                            }label: {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color("kaki"))
                                    .font(.system(size: 50))
                            }
                            .padding([.leading, .bottom])
                            
                            Spacer()
                        }
                        
                    }
                    
                }
            }
        }
        
    }
    }
    
    
    
    
    
    struct ListContentView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }

