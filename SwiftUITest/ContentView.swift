//
//  ContentView.swift
//  SwiftUITest
//
//  Created by cudo on 15/06/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var emailLogin = ""
    @State var passLogin = ""
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("SwiftUI")
                .font(.system(size: 64, weight: .semibold)).foregroundColor(.white)
            HStack{
                Image(systemName: "envelope").foregroundColor(.gray)
                TextField("Email", text: $emailLogin)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            HStack{
                Image(systemName: "lock").foregroundColor(.gray)
                SecureField("Password", text: $passLogin)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            
            Button(action: {}) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.red.opacity(0.8))
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Spacer()
        }.background(Image("bg_login").resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDevice("iPhone 8")
            ContentView().previewDevice("iPhone x")
            ContentView().previewDevice("iPhone 11 Pro Max")
            
        }
    }
}
