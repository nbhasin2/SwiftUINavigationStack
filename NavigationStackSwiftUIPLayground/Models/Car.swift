//
//  Car.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//
import SwiftUI

enum Car: String, Hashable, Identifiable, CaseIterable {
    case civic
    case corola
    case accord
    case crv
    case rav4
    case outlandeer
    
    var id: Self {
        return self
    }
}
