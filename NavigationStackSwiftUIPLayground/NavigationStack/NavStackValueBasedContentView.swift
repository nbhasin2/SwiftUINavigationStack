//
//  NavStackValueBasedLinksContentView.swift
//  RandomSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
// 

import Foundation
import SwiftUI

struct NavStackValueBasedContentView: View {
    let carTypes: [CarType]
    let cars: [Car]
    let viewType: ViewType = .navigationStackValueBasedView

    var body: some View {
        NavigationStack {
            List {
                Section("Car Type") {
                    ForEach(carTypes) { carType in
                        NavigationLink(value: carType) {
                            Text(carType.rawValue)
                        }
                    }
                }
                
                Section("Cars") {
                    ForEach(cars) { car in
                        NavigationLink(car.rawValue, value: car)
                    }
                }
            }
            .navigationTitle("Car Selector")
            .navigationDestination(for: CarType.self) { carType in
                CarTypeView(carType: carType)
            }
            .navigationDestination(for: Car.self) { car in
                CarDetailView(car: car)
            }
        }
    }
}
