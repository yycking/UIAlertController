//
//  ViewController.swift
//  UIAlertController
//
//  Created by Wayne Yeh on 2017/10/6.
//  Copyright © 2017年 Wayne Yeh. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            let alertController = UIAlertController(title: nil, message: nil,
                                                    preferredStyle: .alert)
            let okAction = UIAlertAction(title: "CLOSE", style: .default, handler: nil)
            okAction.setValue(UIColor.orange, forKey: "titleTextColor")
            alertController.addAction(okAction)

            alertController.contentViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "contentViewController")
            
            self.present(alertController, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

