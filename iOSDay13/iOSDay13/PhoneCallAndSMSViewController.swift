//
//  PhoneCallAndSMSViewController.swift
//  iOSDay13
//
//  Created by Giselle Tavares on 13/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit
import MessageUI

class PhoneCallAndSMSViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    
    @IBOutlet weak var txtMessage: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print( NSLocalizedString("STR_SUBJECT", comment: ""))
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        
        if MFMessageComposeViewController.canSendText() {
            let messageVC = MFMessageComposeViewController()
            
            messageVC.body = "Hello, How are you?"
            messageVC.recipients = ["+16479962050"]
            messageVC.messageComposeDelegate = self
            
            self.present(messageVC, animated: false, completion: nil)
        } else {
            print("no SIM available")
        }
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch result {
        case .cancelled:
            print("message was canceled")
        case .failed:
            print("message failed")
        case .sent:
            print("message was sent")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func makePhoneCall(_ sender: UIButton) {
        
        if let url = URL(string: "tel://+16479962050"), UIApplication.shared.canOpenURL(url) {
            
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
            
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
