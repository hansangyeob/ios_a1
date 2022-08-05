//
//  ContentView.swift
//  assignment1sangyeobHan
//
//  Created by Sang Yeob Han  on 04/08/2022.
//

import SwiftUI

extension UserDefaults{
    
    var welcomeScreenShown: Bool{
        get{
            return (UserDefaults.standard.value(forKey: "welcomeScreenShown") as? Bool ?? false )
        }set{
            UserDefaults.standard.setValue(newValue,forKey: "welcomeScreenShown")
        }
    }
}

struct ContentView: View {
    
    var CoffeeShopBrands: [CoffeeShopBrand] = CoffeeShopBrand.allCoffeeBrand

    var body: some View {
        
        if UserDefaults.standard.welcomeScreenShown{
                Home()
            }else{
                InitPage()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





