import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct MapView: View {
    @State private var showingSheet = false
    @ State private var ShowAlert = false
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.6, longitude: 1.44), span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15))
    init() {
        UISegmentedControl.appearance().backgroundColor = .systemGray3
        
    }
    var body: some View {
        
        
            ZStack {
                
                NavigationStack {
                    
                    ZStack(alignment: .top) {
                        
                        
                        
                        Map(coordinateRegion: $mapRegion, annotationItems: locations)
                        { location in
                            
                            MapAnnotation(coordinate: location.coordinate) {
                                
                                NavigationLink {
                                    
                                    AnnonceView(user: location.user)
                                    
                                } label: {
                                    Image(systemName: "carrot.fill")
                                        .foregroundColor(.red)
                                        .font(.title)
                                    
                                }
                                
                            }
                            
                        }
                        .edgesIgnoringSafeArea(.top)
                        //                    PickerContentView()
                        VStack{
                            
                            Spacer()
                            HStack {
                                Spacer()
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
                                    .sheet(isPresented: $showingSheet) {
                                        SheetView()
                                    }
                                }
                            }
                Spacer()
                Spacer()
                Spacer()
                        HStack{
                            NavigationLink {
                                CreationView()
                                
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color("kaki"))
                                    .font(.system(size: 50))
                                    .padding()
                            }
                        Spacer()
                        
                            Button {
                                ShowAlert=true
                            } label: {
                                Image(systemName: "location.circle.fill")
                                        .foregroundColor(Color("kaki"))
                                        .font(.system(size: 50))
                                        .padding()
                            }
                            .alert(isPresented: $ShowAlert) {
                                Alert(title: Text("Souhaitez-vous être géolocalisé(e)?"),
                                      primaryButton: .default(Text("Oui")) {
                                }, secondaryButton: .cancel(Text("Non")) {
                                }
                                )
                            }
               
                    }
                      
                           
                            
                            
                        
                    }
                    
                }
                
                
                
            }
        }
    }
    
    
    struct Location: Identifiable {
        let id = UUID()
        let user: User
        
        let coordinate: CLLocationCoordinate2D
    }
    
    let locations = [
        Location(user: users[1],
                 coordinate: CLLocationCoordinate2D(latitude: 43.600000, longitude: 1.453333)),
        
        Location(user: users[0],
                 coordinate: CLLocationCoordinate2D(latitude: 43.60700, longitude: 1.439333)),
        Location(user: users[2],
                 coordinate: CLLocationCoordinate2D(latitude: 43.648712, longitude: 1.478888)),
        
        Location(user: users[3],
                 coordinate: CLLocationCoordinate2D(latitude: 43.534651, longitude: 1.474553)),
        Location(user: users[4],
                 coordinate: CLLocationCoordinate2D(latitude: 43.620000, longitude: 1.403333)),
        
        Location(user: users[5],
                 coordinate: CLLocationCoordinate2D(latitude: 43.55200, longitude: 1.429333))
        
        
        
        
    ]
    
    
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
    
    
}
