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

    func showMyAlert()  {
        var alerController =  UIAlertController(title: "My Alert", message: "Hello world,Alert example", preferredStyle: .alert)
        var cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alerController.addAction(cancelBtn)
        self.present(alerController,animated: true, completion: nil)
        
    }
    
    func showMyActionSheet()  {
        let actionSheetController = UIAlertController(title: "Action Sheet", message: "Here's a message", preferredStyle: .actionSheet)
        var okayBtn = UIAlertAction(title: "Okay", style: .destructive, handler: nil)
        actionSheetController.addAction(okayBtn)
        self.present(actionSheetController,animated: true, completion: nil)
        
    }
}

