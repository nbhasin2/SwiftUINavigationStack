//
//  NavStackDestinationContentView.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation
import SwiftUI

struct NavStackDestinationContentView: View {
    let cars: [Car]
    let viewType: ViewType = .navigationStackDestination

    var body: some View {
        NavigationStack {
            List(cars) { car in
                NavigationLink(car.rawValue, value: car)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(viewType.title)
            .navigationDestination(for: Car.self) { car in
                CarDetailView(car: car)
            }
        }
    }
}
