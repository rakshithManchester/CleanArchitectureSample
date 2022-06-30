//
//  HomeViewModel.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import Foundation
import RxCocoa
import RxSwift


class HomeViewModel {
    
    var businessModel = BehaviorRelay<[WeatherForecastBusinessModel]>(value: [WeatherForecastBusinessModel]())
//    var businessModel = [WeatherForecastBusinessModel]()
    
    func networkRequest() {
        NetworkManager.networkRequest { [self] (model: WeatherForecast) in
            
            model.list.enumerated().map { list in
                businessModel.accept( businessModel.value + [WeatherForecastBusinessModel(description: list.element.weather[0].weatherDescription, dateTime: list.element.dtTxt, icon: "https://openweathermap.org/img/w/" + list.element.weather[0].icon + ".png")] )
            }
        }
    }
    
}
