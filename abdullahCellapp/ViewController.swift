//
//  ViewController.swift
//  abdullahCellapp
//
//  Created by abdullah on 07/08/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ImageView.contentMode = .scaleAspectFill
    }
    
    @IBAction func Call(_ sender: Any) {
        
        makePhoneCall(phoneNumber: TextLabel.text!)
      
    }
    
    func makePhoneCall(phoneNumber: String) {
        
        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {
            
            let alert = UIAlertController(title: ("Call " + phoneNumber + "?"), message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action) in
                UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
   
    
}
