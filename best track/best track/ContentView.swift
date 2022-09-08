//
//  ContentView.swift
//  best track
//
//  Created by macbook on 08/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "pic1"
    var body: some View {
        VStack{
            Text("ما هو المسار المفضل لديك")
                .bold()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .font(.largeTitle)
        
            Text("IOS")
                .foregroundColor(.white)
                .font(.largeTitle)
                .font(.system(size: 16))
                .frame(width: 250, height: 100)
                .background(Color.mint)
                .clipShape(Capsule())
                
                .onTapGesture {
                           imageName = "apple"
                       }
            Text("Gamedev")
                .foregroundColor(.white)
                .font(.largeTitle)
                .font(.system(size: 16))
                .frame(width: 250, height: 100)
                .background(Color.red)
                .clipShape(Capsule())
                
                        
                .onTapGesture {
                           imageName = "gamedev"
                        }
            Text("Web")
                .foregroundColor(.white)
                .font(.largeTitle)
                .font(.system(size: 16))
                .frame(width: 250, height: 100)
                .background(Color.blue)
                .clipShape(Capsule())
                
            
                .onTapGesture {
                    imageName = "web"}
            
            Text("ANDROID")
                .foregroundColor(.white)
                .font(.largeTitle)
                .font(.system(size: 16))
                .frame(width: 250, height: 100)
                .background(Color.green)
                .clipShape(Capsule())
                
                .onTapGesture {
                            imageName = "android"
                }
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
