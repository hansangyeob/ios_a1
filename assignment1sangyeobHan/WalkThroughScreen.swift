//
//  WalkThroughScreen.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 06/08/2022.
//

import SwiftUI


struct welcomeScreenView: View{
    var title: String
    var detail:String
    @AppStorage("currentPage") var currentPage = 1
   
    var body: some View{
        ZStack{

            VStack(spacing: 10){
                
                HStack{

                    if currentPage == 1{
                        Text("Hello Coffee Lovers!")
                            .font(.title2)
                            .fontWeight(.semibold)
                            //Letter spacing
                            .kerning(1.4)
                           
                    }
                    else{
                        Button(action: {
                            withAnimation(.easeInOut){
                             currentPage -= 1
                            }
                        }, label:{
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .padding(.vertical,10)
                                .padding(.horizontal)
                                .background(Color.green.opacity(0.2))
                                .cornerRadius(10)
                        })
                    }

                    Spacer()
                    
                    //skip btn
                    Button(action:{
                        withAnimation(.easeInOut){
                         currentPage = 4
                        }
                    }, label:{
                        Text("Skip")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .kerning(1.2)
                    })
            }
                .foregroundColor(.black)
                .padding()
                
                Spacer(minLength: 0)
                
                Image(" ")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top)
                    
                Text(detail)
                    .fontWeight(.semibold)
                    .kerning(1.3)
                    .multilineTextAlignment(.center)
             
                Spacer(minLength: 30)
                
            }
        }
    }
}


struct WalkThroughScreen:View{

    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View{

        ZStack{
            
            if currentPage == 1{
                welcomeScreenView(title: "Step 1", detail: "Choose the coffee brand you wish to know in Vietnam")
                    .transition(.scale)
            }
            if currentPage == 2{
                welcomeScreenView(title: "Step 2", detail: "You can get to know deep about the brand you choose")
                    .transition(.scale)
            }
            if currentPage == 3{
                welcomeScreenView(title: "God Coffee You", detail: "Enjoy")
                .transition(.scale)

            }
        }
        .overlay(
            Button(action:{
                withAnimation(.easeOut){
                    if currentPage <= totalPages{
                        currentPage += 1
                    }
                    else{
                        currentPage = 1
                    }
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size:20,weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .background(Color.green)
                    .clipShape(Circle())
                    
                    .overlay(
                        ZStack{
                            Circle()
                                .stroke(Color.brown.opacity(0.4),lineWidth: 4)
                                .padding(-15)
                            Circle()
                                .trim(from:0,to: CGFloat(currentPage)/CGFloat(3))
                                .stroke(Color.brown,lineWidth:4)
                                .rotationEffect(.init(degrees:-90))
                                }
                                .padding(-15)
                            )
                })
                )
    }
}


struct WalkThroughScreen_Previews: PreviewProvider {
    static var previews: some View {
        WalkThroughScreen()
    }
}

var totalPages = 4;

