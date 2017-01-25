//
//  ViewController.swift
//  iOS-Lesson3
//
//  Created by Basil on 2017-01-24.
//  Copyright © 2017 Basil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   //     self.showMyAlert()      //self is class context
     //   showMyAlert()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //showMyAlert()
        showMyActionSheet()
    }

    func showMyAlert(alertTitle:String,alertMessage: String)  {
        var alerController =  UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        var cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alerController.addAction(cancelBtn)
        self.present(alerController,animated: true, completion: nil)
        
    }
    
    func showMyActionSheet()  {
        let actionSheetController = UIAlertController(title: "Action Sheet", message: "Here's a message", preferredStyle: .actionSheet)
        var yesBtn = UIAlertAction(title: "Yes", style: .default, handler: {
            action in
            self.showMyAlert(alertTitle: "Haiii", alertMessage: "You chose well")
        })
        var noBtn = UIAlertAction(title: "No", style: .destructive, handler: {
            action in
            self.showMyAlert(alertTitle: "Nope", alertMessage: "You selected head")
        })
        
        actionSheetController.addAction(yesBtn)
        actionSheetController.addAction(noBtn)
        self.present(actionSheetController,animated: true, completion: nil)
        
    }
}

