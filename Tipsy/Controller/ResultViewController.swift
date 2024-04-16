//
//  ResultViewController.swift
//  Tipsy
//
//  Created by saeed shaikh on 12/25/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var resultValue : String?
    var splitTextInfo : String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var splitTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultValue
        splitTextLabel.text = splitTextInfo
        
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
