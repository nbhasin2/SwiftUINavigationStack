//
//  Category.swift
//  NavigationStackSwiftUIPLayground
//
//  Created by Nishant Bhasin on 2023-04-02.
//

import Foundation

enum CarType: String, Hashable, Identifiable, CaseIterable {
    case sedan
    case suv
    
    var id: Self {
        return self
    }
}
