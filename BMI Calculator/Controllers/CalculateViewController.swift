import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet var weightIndicator1: UILabel!
    @IBOutlet var heightIndicator: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain=CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
//        print(round(sender.value*100)/100.0)
        //other way used in vid
//        String(format: "%.2f",sender.value)
        heightIndicator.text=String(format: "%.2f",sender.value)+"m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
//       print(round(sender.value))
        //other way to round off to nearest integer
//        print(String(format: "%.0f", sender.value))
        //or else
//        print(Int(sender.value))
        weightIndicator1.text="\(Int(sender.value))"+"Kg"
        
    }
    @IBAction func calculateButton(_ sender: UIButton) {
//        let height=(heightIndicator.text?.dropLast(1) as! NSString).floatValue
//        let weight=(weightIndicator1.text?.dropLast(2) as! NSString).floatValue
            //above code is also correct but giving warning to convert substring to float
            //instead create outlet for slider and get value from those as shown in vid
//        bmi=weightSlider.value/pow(heightSlider.value, 2)
//        print(bmi)
        
//        let sviewController=SecondViewController()
//        
//        sviewController.pass="\(bmi)"
//        self.present(sviewController, animated: true, completion: nil)
        let height=heightSlider.value
        let weight=weightSlider.value
        calculatorBrain.calculatebmi(height:height,weight:weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier=="goToResult"){
            let resultVC=segue.destination as! ResultViewController// imp understand what's happening
//            resultVC.bmi=self.bmi
            resultVC.bmi=calculatorBrain.getbmi()
            resultVC.advice=calculatorBrain.getAdvice()
            resultVC.color=calculatorBrain.getColor()
        }
    }
    
}

