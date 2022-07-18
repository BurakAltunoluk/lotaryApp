//
//  ViewController.swift
//  LotaryApp
//
//  Created by Burak Altunoluk on 18/07/2022.
//

import UIKit

class MainVC: UIViewController {
    var youGuessed = 0
    var yourChoosedNumberArray = [Int]()
    var lotaryNumbersSet: Set<Int> = []
    
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var lotaryNumbers: UILabel!
    @IBOutlet var yourChoosedLabel: UILabel!
    
    @IBAction func drawButton(_ sender: UIButton) {
        if yourChoosedNumberArray.count == 5 {
            while lotaryNumbersSet.count < 10 {
                lotaryNumbersSet.insert(Int.random(in: 1...24))
                lotaryNumbers.text = "\(lotaryNumbersSet)"
            }
            for i in yourChoosedNumberArray {
                lotaryNumbersSet.insert(i)
            }
            youGuessed = -(lotaryNumbersSet.count - 15)
            print(youGuessed)
            infoLabel.text = "\(youGuessed) number same"
        }
    }
    
    @IBAction func numberChoosed(_ sender: UIButton) {
        if yourChoosedNumberArray.count < 5{
            yourChoosedNumberArray.append(Int((sender.titleLabel?.text)!)!)
            yourChoosedLabel.text = "\(yourChoosedLabel.text ?? "")  \(sender.titleLabel!.text!)"
            print(yourChoosedNumberArray)
            sender.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

