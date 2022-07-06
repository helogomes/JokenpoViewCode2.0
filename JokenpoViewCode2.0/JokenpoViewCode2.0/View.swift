//
//  ViewController.swift
//  JokenpoViewCode2.0
//
//  Created by user218997 on 06/07/22.
//

import UIKit

class View: ViewElements {

    var player: Int = 0
    var computer: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubviews([titleLabel, buttonsStackView, playStackView, scoreLabel, playerStackView, cpuStackView])
        
        stoneButton.addTarget(self, action: #selector(stoneButtonAction), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(paperButtonAction), for: .touchUpInside)
        scissorsButton.addTarget(self, action: #selector(scissorsButtonAction), for: .touchUpInside)
        
        view.addConstraints([
            
            titleLabel.constraintToItemInside(.top, view.safeAreaLayoutGuide),
            titleLabel.constraintToItemInside(.centerX, view),
            
            buttonsStackView.constraintToItemOutside(.top, titleLabel, 30),
            buttonsStackView.constraintToItemInside(.centerX, view),
            stoneButton.heightAnchor.constraint(equalToConstant: 64),
            stoneButton.widthAnchor.constraint(equalToConstant: 64),
            paperButton.heightAnchor.constraint(equalToConstant: 64),
            paperButton.widthAnchor.constraint(equalToConstant: 64),
            scissorsButton.heightAnchor.constraint(equalToConstant: 64),
            scissorsButton.widthAnchor.constraint(equalToConstant: 64),
            
            playerActionEffect.widthAnchor.constraint(equalToConstant: 128),
            playerActionEffect.heightAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.widthAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.heightAnchor.constraint(equalToConstant: 128),
            playStackView.constraintToItemOutside(.top, buttonsStackView, 40),
            playStackView.constraintToItemInside(.centerX, buttonsStackView),
            
            scoreLabel.constraintToItemOutside(.top, playStackView, 50),
            scoreLabel.constraintToItemInside(.centerX, view),
            
            playerStackView.constraintToItemInside(.leading, view, 20),
            playerStackView.constraintToItemOutside(.top, scoreLabel, 50),
            
            cpuStackView.constraintToItemInside(.trailing, view, -20),
            cpuStackView.constraintToItemOutside(.top, scoreLabel, 50),

            
        ])
    }

  
    
}


