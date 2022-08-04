//
//  ContentView.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 04/08/2022.
//

import SwiftUI

struct ContentView: View {
    var CoffeeShopBrands: [CoffeeShopBrand] = CoffeeShopBrand.allCoffeeBrand
    
    var body: some View {
        NavigationView{
            List{
                ForEach(CoffeeShopBrands, id: \.founderYear ){
                    CoffeeShopBrand in
                    Text("\(CoffeeShopBrand.founderYear)")
                }
            }
        }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





