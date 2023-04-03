//
//  NavContentView.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//  

import Foundation
import SwiftUI

struct NavContentView: View {
    let cars: [Car]
    let viewType: ViewType = .navigationView

    var body: some View {
        NavigationView {
            List(cars) { car in
                NavigationLink(car.rawValue) {
                    CarDetailView(car: car)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(viewType.title)
        }
    }
}
