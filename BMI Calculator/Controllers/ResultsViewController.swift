//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Alex Cannizzo on 13/08/2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // MARK: - Properties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
    }
    
    // MARK: - Functions
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
