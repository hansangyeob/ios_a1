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
        VStack(spacing:10){
            Text("\(coffeeShopBrand.logoImage)")
            Text("\(coffeeShopBrand.brandTitle)")
            Text("\(coffeeShopBrand.founderYear)")
            Text("\(coffeeShopBrand.description)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coffeeShopBrand: CoffeeShopBrand.sampleCoffeeBrand)
    }
}
