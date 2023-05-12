//
//  ContentView.swift
//  RollTheDice
//
//  Created by Apprenant 08 on 28/04/2023.
//

import SwiftUI

struct ContentView: View {
   @State var diceRoll = 1
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(diceRoll)")
            if diceRoll == 1{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                }
            }
            else if diceRoll==2{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:-40)
                    
                }
            }
            else if diceRoll==3{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                }
            }
            else if diceRoll==4{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:-40)
                    
                }
            }
            else if diceRoll==5{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                    
                }
            }
            else if diceRoll==6{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40,y:40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40,y:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:-40)
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.white)
                        .offset(x:40)
                    
                }
            }
            

            
            Spacer()
            Button {
                 diceRoll = Int.random(in: 1...6)
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.orange)
                        .frame(width: 250, height: 80)
                    Text("Roll the dice")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
