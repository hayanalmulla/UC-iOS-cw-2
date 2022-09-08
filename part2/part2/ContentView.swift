//
//  ContentView.swift
//  part2
//
//  Created by macbook on 08/09/2022.
//

import SwiftUI

struct ContentView: View {
    var dollar = 3.28
    var pound = 2.46
    var euro = 2.70
    @State var currency = ""
    
    var body: some View {
        
        VStack{
            Text("محول العملات العجييب !")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.black)
                .ignoresSafeArea()
                
            
            TextField("محول العملات العجيب", text: $currency)
                .font(.largeTitle)
            HStack{
                Image("usaflag")
                    .frame(width: 87, height: 53)
                    .clipShape(Rectangle())
                Text("$")
                Text("\((Double(currency) ?? 0) * 3.28)")
            }
            HStack{
                Image("ukflag")
                    .frame(width: 87, height: 53)
                    .clipShape(Rectangle())
                Text("£")
                Text("\((Double(currency) ?? 0) * 2.46)")
            }
            HStack{
                Image("euroflag")
                    .frame(width: 87, height: 53)
                    .clipShape(Rectangle())
                Text("€")
                Text("\((Double(currency) ?? 0) * 2.70)")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
