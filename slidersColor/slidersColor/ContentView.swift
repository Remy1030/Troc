//
//  ContentView.swift
//  slidersColor
//
//  Created by Apprenant 08 on 28/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var red: Double = 0.0
        @State var blue: Double = 0.0
        @State var green: Double = 0.0
    var body: some View {
        
        

               // @State var : Double = green
             //   @State var : Double = blue
                ZStack {

                        Color(red:red, green: green,blue: blue).ignoresSafeArea()
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Text("Red:\(Int(red))")
                            Spacer()
                            Text("Green:\(Int(green))")
                            Spacer()
                            Text("Blue:\(Int(blue))")
                            Spacer()
                        }
                        HStack {
                            Slider(value: $red, in:0...1)
                                .frame(width: 60.0)
                            Text ("\(Int(red))")
                            Slider(value: $green, in:0...1)
                                .frame(width: 60.0)
                            Text ("\(Int(green))")
                            Slider(value: $blue, in:0...1)
                                .frame(width: 60.0)
                            Text ("\(Int(blue))")


                        } }}


            
        }

        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
