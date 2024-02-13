
import UIKit

struct CalculatorBrain{
    
    
//    var bmi:Float=0.0
    var bmi:BMI?
    
    mutating func calculatebmi(height:Float,weight:Float){
        let bmiValue=weight/pow(height,2)
        if bmiValue<18.5{
//            print("underweight")
            bmi=BMI(value:bmiValue,advice:"Eat More Pies!",color:UIColor.blue)
        }else if(bmiValue>18.5 && bmiValue<24.9){
//            print("healthy")
            bmi=BMI(value:bmiValue,advice:"Healthy",color: UIColor.green)
        }else{
            //            print("overweight")
            bmi=BMI(value:bmiValue,advice:"Eat less Pies!",color:UIColor.red)
        }
        
    }
    
    func getbmi()->Float{
        return bmi?.value ?? 0.0//using nil coalesing operator to set default value
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "Invalid"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.lightGray
    }
}
