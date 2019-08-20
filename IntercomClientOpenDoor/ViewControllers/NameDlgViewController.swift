//
//  NameDlgViewController.swift
//  IntercomClientOpenDoor
//
//  Created by my on 5/9/19.
//  Copyright © 2019 newlinks. All rights reserved.
//

import UIKit
import Localize_Swift

class NameDlgViewController: UIViewController {
    var completionHandler : ((_ name: String, _ action:String) -> Void)?
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnConfirm: UIButton!
    var defaultName = "";
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureUI();
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        // dismiss(animated: true, completion: nil)
    }
    
    func configureUI() {
        lblTitle.text = "enter_name".localized()
        txtName.text = defaultName;
        btnConfirm.setTitle("confirm".localized(), for: .normal);
        btnCancel.setTitle("cancel".localized(), for: .normal)
    }
    
    @IBAction func confirmAction(_ sender: Any) {
        dismiss(animated: true) {
            self.defaultName = self.txtName.text ?? self.defaultName;
            self.completionHandler?(self.defaultName, "confirm");
            
        }
      
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true) {
            self.defaultName = self.txtName.text ?? self.defaultName;
            self.completionHandler?(self.defaultName, "cancel");
            
        }
    }
    
    

}
