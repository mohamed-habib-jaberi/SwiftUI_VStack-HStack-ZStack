//
//  ContentView.swift
//  SwiftUI_VStack&&HStack&&ZStack
//
//  Created by mohamed  habib on 19/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
         //Third Exemple
        ZStack{
            
            Circle()
                .fill(Color.catPurple)
                .frame(width: 170, height: 170)
                .padding()
                .shadow(radius: 10)
            
            VStack{
                Image("CatOnKeyboard")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                Text("Sign Up your cat for Regex of cats")
                    .font(Font.system(.largeTitle, design: .rounded))
                    .foregroundColor(.primary)
                .padding()
                    .background(Color.red)
                .cornerRadius(15)
                
                
            }
            Spacer()
                .layoutPriority(1)
        }
        .background(Color.myGreen)
        .edgesIgnoringSafeArea(.all)
        
        
          //Second Exemple
//        VStack(alignment: .leading ) {
//            Text("Sign Up your cat for Regex of cats")
//                .font(Font.system(.headline, design: .rounded))
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//                .shadow(color: .gray, radius: 5, x: 5, y: 5)
//                .padding([.top, .bottom])
//
//            HStack {
//                Image("CatOnKeyboard")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//
//                Button(action: {
//                    print("Signed Up")
//                }) {
//                    HStack{
//                        Text("Sign Up Today!")
//                        Image(systemName: "checkmark.circle")
//                    }
//                }
//                .padding()
//                .background(Color.catPurple)
//                .foregroundColor(.white)
//                .shadow(radius: 5)
//            }
//        }
        
  //First Exemple
        
//        VStack(alignment: .trailing, spacing: 20){
//            Text("RegEx for Cats")
//                .font(Font.system(.largeTitle, design: .rounded))
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//                .shadow(color: .gray, radius: 5, x: 5, y: 5 )
//                .padding([.leading, .trailing])
//
//            Image("CatOnKeyboard")
//            .resizable()
//            .frame(width: 100, height: 100)
//            .scaledToFit()
//            .padding()
//        }
//        .background(Color.catPurple)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            .previewDevice("iPhone SE")
            
            ContentView()
                .previewLayout(.sizeThatFits)
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
       
    }
}

fileprivate extension Color {
  static let catPurple = Color(red: 128/255, green: 94/255, blue: 158/255)
  static let myGreen = Color(red: 21/255, green: 132/255, blue: 67/255)
}
