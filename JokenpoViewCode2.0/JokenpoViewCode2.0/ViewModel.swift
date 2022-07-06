//
//  ViewModel.swift
//  JokenpoViewCode2.0
//
//  Created by user218997 on 06/07/22.
//

import Foundation
import UIKit

extension View {
    
    @objc func stoneButtonAction() {
        
        playerActionEffect.image = UIImage(named: "0")
        
        cpuActionEffect.image = UIImage(named: String(Int.random(in: 0...2)))
        
        play()
        
    }
    
    @objc func paperButtonAction() {
        
        playerActionEffect.image = UIImage(named: "1")
        
        cpuActionEffect.image = UIImage(named: String(Int.random(in: 0...2)))
        
        play()

    }
    
    @objc func scissorsButtonAction() {
        
        playerActionEffect.image = UIImage(named: "2")
        
        cpuActionEffect.image = UIImage(named: String(Int.random(in: 0...2)))
        
        play()

    }
    
    func play() {
    
        if  self.playerActionEffect.image == UIImage(named: "0") &&  self.cpuActionEffect.image == UIImage(named: "2") {
                            player += 1
                            scorePlayerLabel.text = String(player)
                        } else if self.playerActionEffect.image == UIImage(named: "0") &&  self.cpuActionEffect.image == UIImage(named: "1"){
                            computer += 1
                            scoreCpuLabel.text = String(computer)
                        } else if self.playerActionEffect.image == UIImage(named: "1") &&  self.cpuActionEffect.image == UIImage(named: "0") {
                            player += 1
                            scorePlayerLabel.text = String(player)
                        } else if  self.playerActionEffect.image == UIImage(named: "1") &&  self.cpuActionEffect.image == UIImage(named: "2"){
                            computer += 1
                            scoreCpuLabel.text = String(computer)
                        } else if  self.playerActionEffect.image == UIImage(named: "2") &&  self.cpuActionEffect.image == UIImage(named: "1") {
                            player += 1
                            scorePlayerLabel.text = String(player)
                        } else if  self.playerActionEffect.image == UIImage(named: "2") &&  self.cpuActionEffect.image == UIImage(named: "0"){
                            computer += 1
                            scoreCpuLabel.text = String(computer)
                        }

        
}
}
