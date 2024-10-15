//
//  getUniqueColors.swift
//  vlgrigorevPW1
//
//  Created by Vladimir Grigoryev on 15.10.2024.
//

import UIKit

func getUniqueColors(_ views: [UIView]) -> Set<UIColor> {
    // Используем Set для уникальных оттенков.
    var set = Set<UIColor>();
    
    while set.count < views.count {
        let newColor = UIColor.white
        set.insert(newColor.random())
    }
    
    return set
}


