//
//  ViewElements.swift
//  JokenpoViewCode2.0
//
//  Created by user218997 on 06/07/22.
//

import Foundation
import UIKit

class ViewElements: UIViewController {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        titleLabel.text = "JOKENPO"
        titleLabel.textColor = .white
        return titleLabel
    }()
    
    let stoneButton: UIButton = {
        let stoneButton = UIButton()
        stoneButton.setImage(UIImage(named: "0"), for: .normal)
        return stoneButton
    }()
    
    let paperButton: UIButton = {
        let paperButton = UIButton()
        paperButton.setImage(UIImage(named: "1"), for: .normal)
        return paperButton
    }()
    
    let scissorsButton: UIButton = {
        let scissorsButton = UIButton()
        scissorsButton.setImage(UIImage(named: "2"), for: .normal)
        return scissorsButton
    }()

    lazy var buttonsStackView: UIStackView = {
        let buttonStackView = UIStackView(arrangedSubviews: [stoneButton, paperButton, scissorsButton])
        buttonStackView.backgroundColor = .black
        buttonStackView.spacing = 35
        return buttonStackView
    }()
    
    let playerActionEffect: UIImageView = {
        let actionEffect = UIImageView()
        return actionEffect
    }()
    
    let versusLabel: UILabel = {
        let versusLabel = UILabel()
        versusLabel.textColor = .white
        versusLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        versusLabel.text = "VS"
        versusLabel.textAlignment = .center
        return versusLabel
    }()
    
    let cpuActionEffect: UIImageView = {
        let cpuActionEffect = UIImageView()
        return cpuActionEffect
    }()
    
    lazy var playStackView: UIStackView = {
        let playStackView = UIStackView(arrangedSubviews: [playerActionEffect, versusLabel, cpuActionEffect])
        playStackView.axis = .vertical
        playStackView.spacing = 20
        playStackView.backgroundColor = .black
        return playStackView
    }()
    
    let scoreLabel: UILabel = {
        let scoreLabel = UILabel()
        scoreLabel.text = "Placar: "
        scoreLabel.textColor = .white
        scoreLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return scoreLabel
    }()
    
    let playerLabel: UILabel = {
        let playerLabel = UILabel()
        playerLabel.text = "Jogador"
        playerLabel.textAlignment = .center
        playerLabel.textColor = .yellow
        playerLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return playerLabel
    }()
    
    let scorePlayerLabel: UILabel = {
        let scorePlayerLabel = UILabel()
        scorePlayerLabel.text = "0"
        scorePlayerLabel.textAlignment = .center
        scorePlayerLabel.textColor = .yellow
        scorePlayerLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return scorePlayerLabel
    }()
    
    lazy var playerStackView: UIStackView = {
        let playerStackView = UIStackView(arrangedSubviews: [playerLabel, scorePlayerLabel])
        playerStackView.axis = .vertical
        playerStackView.spacing = 10
        playerStackView.backgroundColor = .black
        return playerStackView
    }()
    
    let cpuLabel: UILabel = {
        let cpuLabel = UILabel()
        cpuLabel.text = "Computador"
        cpuLabel.textAlignment = .center
        cpuLabel.textColor = .blue
        cpuLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return cpuLabel
    }()
    
    let scoreCpuLabel: UILabel = {
        let scoreCpuLabel = UILabel()
        scoreCpuLabel.text = "0"
        scoreCpuLabel.textColor = .blue
        scoreCpuLabel.textAlignment = .center
        scoreCpuLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return scoreCpuLabel
    }()
    
    lazy var cpuStackView: UIStackView = {
        let cpuStackView = UIStackView(arrangedSubviews: [cpuLabel, scoreCpuLabel])
        cpuStackView.axis = .vertical
        cpuStackView.spacing = 10
        cpuStackView.backgroundColor = .black
        return cpuStackView
    }()
}
