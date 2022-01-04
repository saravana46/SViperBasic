//
//  ViewController.swift
//  ViperBasic
//
//  Created by apple on 17/02/21.
//  Copyright © 2021 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var NewBtn: UIButton!
    @IBOutlet var Name: UITextField!
    @IBOutlet var NewName: UITextField!
    @IBOutlet var SetText: UILabel!
    
    var presentor:ViewToPresenterProtocol?
    
    var lbltext : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func BtnAction(_ sender: Any) {
        lbltext = ("\(Name.text ?? "") \(NewName.text ?? "")")
        presentor?.startfunction(params: lbltext ?? "")
        print("123 \(lbltext ?? "")")
    }


}
extension ViewController:PresenterToViewProtocol{
    
    func DoneFunction(text:String) {
        SetText.text = text
        print("Response123 \(text)")
    }
}
