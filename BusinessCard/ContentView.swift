//
//  ContentView.swift
//  BusinessCard
//
//  Created by Gokul Rama on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.35, green: 0.38, blue: 0.46).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("gokulrama")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Gokul Ramakrishnan")
                    .font(Font.custom("Product Sans", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Product Sans", size: 25))
                Divider()
                InfoView(text: "+1 123 456 7890", imageName: "phone.fill")
                InfoView(text: "gokul@email.com", imageName: "envelope.fill")
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
