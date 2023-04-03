//
//  NavStackContentView.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation
import SwiftUI

struct NavStackContentView: View {
    let cars: [Car]
    let viewType: ViewType = .navigationStack

    var body: some View {
        NavigationStack {
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
