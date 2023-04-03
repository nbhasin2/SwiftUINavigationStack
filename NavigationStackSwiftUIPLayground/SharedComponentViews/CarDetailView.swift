//
//  NavStackSecontView.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation
import SwiftUI

struct CarDetailView: View {
    let car: Car

    var body: some View {
        VStack {
            Text("Car name: \(car.rawValue)")
        }
        .navigationTitle("\(car.rawValue)")
    }
}
