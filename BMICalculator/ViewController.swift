//
//  ViewController.swift
//  BMICalculator
//
//  Created by Isagulov urmat on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var weightModel: resultModel = .verySkinny
    
    var weight: Int = 50
    var height: Int = 150
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Stats!"
        
        initialSetUp()

        

    }
    
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        
        weight = Int(sender.value)
        
        weightLabel.text = "\(weight) кг"
    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        
        height = Int(sender.value)
        
        hightLabel.text = "\(height) см"
    }
    
    func findBMIindex(){
        
        let result = Float(weight) / pow(Float(height)/100, 2)
        
        if result < 16{
            weightModel = .verySkinny
        }
        if result > 16 && result < 18.5{
            weightModel = .skinny
        }
        if result > 18.25 && result < 25{
            weightModel = .normal
        }
        if result > 25 && result < 30{
            weightModel = .excessWeight
        }
        if result > 30 && result < 36{
            weightModel = .obesityOfTheThirdDegree
        }
        if result > 35 && result < 41{
            weightModel = .obesityOfTheSecondDegree
        }
        if result > 40{
            weightModel = .excessWeight
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as? ResultViewController
        
        destinationVC?.weight = weight
        destinationVC?.height = height
        
        destinationVC?.weightType = self.weightModel
       
    }
    
    func initialSetUp(){
        topView.layer.cornerRadius = 22
        topView.layer.masksToBounds = true
        bottomView.layer.cornerRadius = 22
        bottomView.layer.masksToBounds = true
        
        weightSlider.maximumValue = 200
        heightSlider.maximumValue = 300
    }
}

