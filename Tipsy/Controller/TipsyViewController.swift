
import UIKit

class TipsyViewController: UIViewController {
    var tipsyBrain = TipsyBrain()
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroTip: UIButton!
    @IBOutlet weak var tenTip: UIButton!
    @IBOutlet weak var twentyTip: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    

    @IBAction func tipsOption(_ sender: UIButton) {

        zeroTip.isSelected = false
        tenTip.isSelected = false
        twentyTip.isSelected = false
        sender.isSelected = true
        
        if(zeroTip == sender){
            tipsyBrain.tip = 0.0
        }else if(tenTip == sender){
            tipsyBrain.tip = 0.1
        }else{
            tipsyBrain.tip = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        let selectedStepper = Int(sender.value)
        splitNumberLabel.text = String(selectedStepper)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        // converting the optional string into the float
        if let totalText = billTextField.text,
           let splitText = splitNumberLabel.text {
               
            if let total = Float(totalText),
               let splitPerson = Float(splitText) {
                    tipsyBrain.calculateTipsy(total, splitPerson)
                } else {
                    print("Invalid input for total or split number")
                }
            
            } else {
                print("Text fields are nil")
            }
        
        performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResult"){
            let resultVC = segue.destination as! ResultViewController
            resultVC.resultValue = tipsyBrain.getResult()
            resultVC.splitTextInfo = tipsyBrain.getInfo()
            
        }
    }
}

