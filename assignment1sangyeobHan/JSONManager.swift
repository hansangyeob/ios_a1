//
//  JSONManager.swift
//  tut4
//
//  Created by Sang Yeob Han  on 28/07/2022.
//https://app.quicktype.io
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation


struct CoffeeShopBrand: Codable {

    let logoImage, brandTitle, description, founderYear: String
    let owner: String
    
    static let allCoffeeBrand :[CoffeeShopBrand] = Bundle.main.decode(file:"ShopData.json")
    static let sampleCoffeeBrand : CoffeeShopBrand = allCoffeeBrand[0]
}


extension Bundle{
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project.")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Could not load \(file) in the project.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self,from:data) else{
            fatalError("Could not decode \(file) in the project.")
        }

        return loadedData;
    }
}
