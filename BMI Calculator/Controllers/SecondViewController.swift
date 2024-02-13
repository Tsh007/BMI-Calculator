//not deleting it for future ref
import UIKit

class SecondViewController:UIViewController{
    
    var pass:String = "hello"
    
    override func viewDidLoad() {
        super.viewDidLoad()//imp to understand what is hapening here
        
        //view is already present so no need to make one
//        let view=UIView()
        view.backgroundColor = .red
        
        let label=UILabel()
        label.text=pass
        label.frame=CGRect(x: 0, y: 0, width: 100, height: 100)
        
        view.addSubview(label)
        
    }
    

    
}
