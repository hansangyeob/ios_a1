//
//  InitPage.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 05/08/2022.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [Color.brown, Color.white]),
    startPoint: .top, endPoint: .bottom)


struct InitPage: View {

    @AppStorage("welcomeScreenShown") //UserDefault
    var welcomeScreenShown:Bool = false


    var body: some View {
        ZStack {
            backgroundGradient
                    .ignoresSafeArea()
                       .scaledToFill()
            VStack(spacing:20) {

                Text(" ")
                    .font(.custom("Baskerville", size: 40, relativeTo: .body))
                
                       Text("Coffee Me")
//                           .font(.largeTitle)
                           .foregroundColor(.white)
                           .fontWeight(.heavy)
                           .font(.custom("Baskerville", size: 40, relativeTo: .body))
                Spacer()
            }
               }
               .accentColor(Color.black)
               .onAppear(perform:{
                   UserDefaults.standard.welcomeScreenShown = true
               })
            
    }
}

struct InitPage_Previews: PreviewProvider {
    static var previews: some View {
        InitPage()
    }
}
