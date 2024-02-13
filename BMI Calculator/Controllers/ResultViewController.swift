import UIKit

class ResultViewController: UIViewController {
    
    var bmi:Float?
//    var bmi:String?
    var advice:String?
    var color:UIColor?

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text=String(format: "%0.1f", bmi ?? 0.0)// this is doing the same thing as done in vid but formatted in my own way
        adviceLabel.text=advice
        view.backgroundColor=color

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true ,completion: nil)
        
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
