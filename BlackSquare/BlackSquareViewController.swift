//
//  ViewController.swift
//  BlackSquare
//
//  Created by Динара Аминова on 17.03.2021.
//

import UIKit

class BlackSquareViewController: UIViewController {
    private let mainView = BlackSquareView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainView.configureView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mainView.animateBlackSquare()
    }
}

