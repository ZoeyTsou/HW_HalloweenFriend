//
//  MViewController.swift
//  HW_HalloweenTest
//
//  Created by Zoey on 2016/10/27.
//  Copyright © 2016年 Zoey. All rights reserved.
//

import UIKit

class MViewController: UIViewController {
    
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var pumpkingSeg: UISegmentedControl!
    @IBOutlet weak var movieSwitch: UISwitch!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var yesNoImage: UIImageView!
    @IBOutlet weak var pumpkinImgae: UIImageView!
    
    var dateValue:Int = 1
    
    
    
    
    @IBAction func dateSlider(_ sender: UISlider) {
        
        dateLabel.isHidden = false
        dateValue = Int(sender.value)
        dateLabel.text = "10/\(dateValue)"
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: AnyObject) {
        
        let color:String = colorTextField.text!
        
        if movieSwitch.isOn==true && dateValue == 31 && pumpkingSeg.selectedSegmentIndex == 0 && (color == "橘" || color == "黑" || color == "紅") {
            yesNoImage.isHidden=false
            yesNoImage.image = #imageLiteral(resourceName: "yes")
            pumpkinImgae.isHidden=false
            pumpkinImgae.image=#imageLiteral(resourceName: "punking")
            
        }else {
            yesNoImage.isHidden=false
            yesNoImage.image = #imageLiteral(resourceName: "No")
            pumpkinImgae.isHidden=false
            pumpkinImgae.image=#imageLiteral(resourceName: "skull")
            
        }
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
