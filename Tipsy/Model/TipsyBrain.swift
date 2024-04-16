
struct TipsyBrain{
    var tip : Float?
    var result : String?
    var info : String?
    
     mutating func calculateTipsy(_ total : Float ,_ splitPerson : Float){
         
         if (tip == 0.0){
             info = "Split between \(splitPerson) people, with 0% tip."
         }else if (tip == 0.1){
             info = "Split between \(splitPerson) people, with 10% tip."
         }else{
             info = "Split between \(splitPerson) people, with 20% tip."
         }
         
         let tipCalculate = total * (tip ?? 0.2) // 0.2 cause default selected 20%
         let splitResult = (total + tipCalculate) / splitPerson
         result = String(format: "%.2f", splitResult)
        
    }
    
    func getResult() -> String{
        return result ?? "0.0"
    }
            
    func getInfo() -> String{
        return info ?? "something went wrong"
    }
}
