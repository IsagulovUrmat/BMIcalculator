//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Isagulov urmat on 2/7/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bottomView2: UIView!
    @IBOutlet weak var topView2: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var weight: Int = 150
    var height: Int = 170
    
    var weightType: resultModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Результаты"
        
        heightLabel.text = "\(height) см"
        weightLabel.text = "\(weight) кг"
        
        findBMI()
        initialSetUp()
        

        
    }
    
    func findBMI(){
        let result = Float(weight) / pow(Float(height)/100, 2)
        
        if result < 16{
            weightType = .verySkinny
        }
        if result > 16 && result < 18.5{
            weightType = .skinny
        }
        if result > 18.25 && result < 25{
            weightType = .normal
        }
        if result > 25 && result < 30{
            weightType = .excessWeight
        }
        if result > 30 && result < 36{
            weightType = .obesityOfTheFirstDegree
        }
        if result > 35 && result < 41{
            weightType = .obesityOfTheSecondDegree
        }
        if result > 40{
            weightType = .obesityOfTheThirdDegree
        }
    }
    
    func initialSetUp(){
        if let weight = weightType{
            titleLabel.text = weight.title
            descriptionLabel.text = weight.definiton
        }
        
        topView2.layer.cornerRadius = 22
        topView2.layer.masksToBounds = true
        bottomView2.layer.cornerRadius = 22
        bottomView2.layer.masksToBounds = true
    }

}
