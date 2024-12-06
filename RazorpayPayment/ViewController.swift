//
//  ViewController.swift
//  RazorpayPayment
//
//  Created by Aneesha on 02/08/23.
//

import UIKit
import Razorpay

class ViewController: UIViewController, RazorpayPaymentCompletionProtocol {
    
    var razorpay: RazorpayCheckout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        razorpay = RazorpayCheckout.initWithKey("rzp_test_xRMaXzgqmOk4Px", andDelegate: self)
    }
    
    @IBAction func proceedCheckout(_ sender: UIButton) {
        self.showPaymentForm()
    }
    
    internal func showPaymentForm() {
        let opetions: [String:Any] = [
            "amount": "100", // 100 rupee = 1 rupee
            "descprtion": "How to use Razorpay Payment Gateway",
            "image": "https://e7.pngegg.com/pngimages/953/232/png-clipart-payment-gateway-computer-icons-e-commerce-payment-system-payment-blue-text.png",
            "name": "Payment",
            "prefill": [
                "contact": "8124792685",
                "email": "aneesha@gmail.com",
                
            ],
            "theme": [
                "color": "#fdc5e7"
            ]
        ]
        razorpay.open(opetions)
    }
    
    func onPaymentError(_ code: Int32, description str: String) {
        let alert = UIAlertController(title: "Failure", message: str, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    func onPaymentSuccess(_ payment_id: String) {
        let alert = UIAlertController(title: "Success", message: payment_id, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
}

