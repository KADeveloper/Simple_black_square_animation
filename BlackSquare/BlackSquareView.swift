//
//  BlackSquareView.swift
//  BlackSquare
//
//  Created by Динара Аминова on 17.03.2021.
//

import UIKit

class BlackSquareView: UIView {
    private let blackSquareView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor.black.cgColor
        return view
    }()
    
    private var isBigBlackSquare: Bool = false
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview(blackSquareView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView() {
        let squareWidth = bounds.width / 4
        blackSquareView.frame = CGRect(x: bounds.midX - squareWidth / 2,
                                       y: bounds.midY - squareWidth / 2,
                                       width: squareWidth,
                                       height: squareWidth)
    }
    
    func animateBlackSquare() {
        let squareWidth = self.isBigBlackSquare ? bounds.width / 4 : bounds.width / 2
        
        UIView.animate(withDuration: 3) {
            self.blackSquareView.frame = CGRect(x: self.bounds.midX - squareWidth / 2,
                                                y: self.bounds.midY - squareWidth / 2,
                                               width: squareWidth,
                                               height: squareWidth)
        } completion: { (completion) in
            self.isBigBlackSquare = self.isBigBlackSquare ? false : true
        }
    }
}
