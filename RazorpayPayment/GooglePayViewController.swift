//
//  GooglePayViewController.swift
//  RazorpayPayment
//
//  Created by Aneesha on 02/08/23.
//

import UIKit

class GooglePayViewController: UIViewController {

    //https://pay.google.com/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openGooglePayButtonTapped(_ sender: UIButton) {
        if let url = NSURL(string: "https://pay.google.com"){
            UIApplication.shared.open(url as URL)
//            UIApplication.shared.openURL(url as URL)
        }
//           if let googlePayURL = URL(string: "https://www.apple.com/in/safari/") {
//               if UIApplication.shared.canOpenURL(googlePayURL) {
//                   UIApplication.shared.open(googlePayURL, options: [:], completionHandler: nil)
//               } else {
//                   // Handle error: Unable to open URL
//                   print("Unable to open Google Pay URL")
//               }
//           }
       }
}
