import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmoundTextFeild: UITextField!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var Tipamount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmoundTextFeild.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        Tipamount.text = String(format: "$%.2f", tip)

        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}
