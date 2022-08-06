//
//  ContentView.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 04/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    var CoffeeShopBrands: [CoffeeShopBrand] = CoffeeShopBrand.allCoffeeBrand

    var body: some View {
        
        if currentPage == totalPages{
            Home()
        }else{
            WalkThroughScreen()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




