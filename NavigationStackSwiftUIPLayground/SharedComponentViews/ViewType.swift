//
//  ViewType.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation

enum ViewType {
    case navigationStack
    case navigationStackDestination
    case navigationStackValueBasedView

    // Deprecated in iOS16+
    case navigationView

    // common
    var title: String {
        switch self {
        case .navigationStack:
            return "Navigation Stack"
        case .navigationStackDestination:
            return "Navigation Stack with Destination"
        case .navigationStackValueBasedView:
            return "Navigation Stack with Value Based View"
        case .navigationView:
            return "Navigation View (Deprecated in iOS16+)"
        }
    }
}
