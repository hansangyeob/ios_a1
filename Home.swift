//
//  Home.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 05/08/2022.
//

import SwiftUI

struct Home: View {
    
    var CoffeeShopBrands: [CoffeeShopBrand] = CoffeeShopBrand.allCoffeeBrand

    var body: some View {

        NavigationView{
            List{
                ForEach(CoffeeShopBrands, id: \.founderYear ){ CoffeeShopBrand in
                    NavigationLink(destination:
                                    DetailView(coffeeShopBrand: CoffeeShopBrand)) {
                        VStack(alignment: .leading, spacing: 100){
                            HStack{
                                
                                Image("\(CoffeeShopBrand.logoImage)")
                                    .resizable()
                                    .frame(width: 50, height:50)
                                
                                Text("\(CoffeeShopBrand.brandTitle)")
                                    .font(.subheadline)
                                    .lineLimit(nil)
                            }.padding(.leading,3)
                        }.padding(.leading, 16)
                    }.navigationTitle("VietNam Top 9")
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
