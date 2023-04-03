//
//  RandomSwiftUIPLaygroundApp.swift
//  RandomSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import SwiftUI

@main
struct RandomSwiftUIPLaygroundApp: App {

    let viewType: ViewType = .navigationView

    var body: some Scene {
        WindowGroup {
            switch viewType {
            case .navigationStack:
                NavStackContentView(cars: Car.allCases)
            case .navigationStackDestination:
                NavStackDestinationContentView(cars: Car.allCases)
            case .navigationStackValueBasedView:
                NavStackValueBasedContentView(carTypes: CarType.allCases, cars: Car.allCases)
            case .navigationView:
                NavContentView(cars: Car.allCases)
            }
        }
    }
}

