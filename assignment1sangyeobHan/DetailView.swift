//
//  DetailView.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 04/08/2022.
//

import SwiftUI

struct DetailView: View {
    
    var coffeeShopBrand : CoffeeShopBrand
    
    var body: some View {
        ZStack{
            Color.white
                    .ignoresSafeArea()
        VStack(spacing:5){
            
            Image("\(coffeeShopBrand.logoImage)")
                .resizable()
                .frame(width: 150, height: 150, alignment:.center)
                .cornerRadius(15)
            
            Text("\(coffeeShopBrand.brandTitle)")
                .font(.headline)
            
            Text("Owned By : \(coffeeShopBrand.owner)")
            
            Text("Founded Year : \(coffeeShopBrand.founderYear)")
            Text("\(coffeeShopBrand.description)")
                .font(.system(size: 16, weight: .light, design: .serif))
                .lineSpacing(3)
                .padding()
                .frame(width: 300, height: 450, alignment: .center)
                .background(Color.brown.opacity(0.1))
                .cornerRadius(10)
                .lineLimit(nil)
        }
    }
        
}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coffeeShopBrand: CoffeeShopBrand.sampleCoffeeBrand)
    }
}
