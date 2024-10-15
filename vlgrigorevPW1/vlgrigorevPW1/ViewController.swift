//
//  ViewController.swift
//  vlgrigorevPW1
//
//  Created by Vladimir Grigoryev on 14.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var views: [UIView]!
    
    // Загрузка главного экрана на старте.
    override func viewDidLoad() {
        super.viewDidLoad()
        var colors = getUniqueColors(views)

        for view in views { 
            view.backgroundColor = colors.popFirst()
            view.layer.cornerRadius = .random(in: 0...25)
        }
    }

    // Выполнение кнопки "Поменять все".
    @IBAction func buttonWasPressed(_ sender: UIButton) {
        sender.isEnabled = false
        var colors = getUniqueColors(views)
        for view in views {
            UIView.animate(withDuration: 3.0, animations: {
                view.backgroundColor = colors.popFirst()
                view.layer.cornerRadius = .random(in: 0...25)
            }, completion: {_ in sender.isEnabled = true})
        }
    }
    
}

