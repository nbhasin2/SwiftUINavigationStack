//
//  CarTypeView.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation
import SwiftUI

struct CarTypeView: View {
    let carType: CarType

    var body: some View {
        VStack {
            Text("Car type: \(carType.rawValue)")
        }
        .navigationTitle("\(carType.rawValue)")
    }
}
