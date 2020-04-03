//
//  DataLoader.swift
//  LoadfromJSON
//
//  Created by Ajay Gandecha on 12/15/19.
//  Copyright © 2019 Ajay Gandecha. All rights reserved.
//

import Foundation

public class DataLoader {
    
    @Published var userData = [UserData]()
    
    init() {
        loadFromInternet()
        sort()
    }
    
    func loadFromInternet() {
        
        if let url = URL(string: "https://api.myjson.com/bins/cpcyg") {

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    
                    do {
                        let jsonDecoder = JSONDecoder()
                        let dataFromJson = try jsonDecoder.decode([UserData].self, from: data)
                        
                        
                        print(dataFromJson)
                    }
                    catch let error {
                        print(error)
                    }
                }

            }.resume()
        }
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "mydata", withExtension: "json") {
            
            // do catch in case of an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([UserData].self, from: data)
                
                self.userData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.userData = self.userData.sorted(by: { $0.customer_id < $1.customer_id })
    }
}
