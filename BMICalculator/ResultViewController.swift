//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Isagulov urmat on 2/7/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var weight: Int = 50
    var height: Int = 170

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Результаты"
        
        let result = Float(weight) / pow(Float(height)/100, 2)
        
        heightLabel.text = "\(height) см"
        weightLabel.text = "\(weight) кг"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
