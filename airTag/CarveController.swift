//
//  CarveController.swift
//  airTag
//
//  Created by 羅承志 on 2021/7/16.
//

import UIKit

class CarveController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var engraveTextField: UITextField!
    @IBOutlet weak var exceedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //顯示文字到Label
    @IBAction func enterText(_ sender: UITextField) {
        showLabel.text = sender.text
        //取字數
        exceedLabel.text = String(engraveTextField.text!.count)
        let count = Int(exceedLabel.text!)
        //如果超過5個字，下方會出現警告文字
        if count! > 5 {
            exceedLabel.isHidden = false
            exceedLabel.text = "⚠️訊息長度超出可用空間"
        }
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
