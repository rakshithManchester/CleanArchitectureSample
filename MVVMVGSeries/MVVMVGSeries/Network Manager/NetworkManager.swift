//
//  NetworkManager.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 28/06/22.
//

import Foundation

class NetworkManager {
    static func networkRequest<T: Decodable>(completionHanlder: @escaping (_ model:T)->()) {
        URLSession.shared.dataTask(with: URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=13.060212076454148&lon=77.58554121949155&appid=1ef84661b0b599f01d31027b5da1cd93")!) { _data, response, error in
            if let data = _data{
                do {
                   let json = try JSONDecoder().decode(T.self, from: data)
                    completionHanlder(json as! T)
                } catch(let excep) {
                    print(excep)
                }
                
            }
        }.resume()
    }
}
