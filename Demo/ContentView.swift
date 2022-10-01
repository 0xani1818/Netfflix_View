//
//  ContentView.swift
//  Demo
//
//  Created by Yu Zhi on 2022/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
           
            Image("chf")
                .frame(width: 400, height: 380)
                .clipShape(Circle())
            Circle()
                .stroke(.gray, lineWidth:5)
                .frame(width: 500, height: 350)
                .offset(x:-2,y:-30)
    
            Image("check")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 50)
                .offset(x:100, y:120)
        }
          
           
        
            ///.rotationEffect(.degrees(45))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
