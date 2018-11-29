//
//  ViewController.swift
//  iOSDay13
//
//  Created by Giselle Tavares on 13/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    
    @IBOutlet weak var txtSubject: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnSendEmail(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let picker = MFMailComposeViewController()
            picker.mailComposeDelegate = self
            picker.setToRecipients(["gitavares@gmail.com"])
            picker.setSubject(txtSubject.text!)
            picker.setMessageBody(txtMessage.text!, isHTML: true)

            // adding attcahment
            if let path = Bundle.main.path(forResource: "car", ofType: "png") {
                if let fileData = NSData(contentsOfFile: path){
                    picker.addAttachmentData(fileData as Data, mimeType: "image/png", fileName: "car.png")
                }
                
            }
            
            present(picker, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result {
        case .cancelled:
            print("email canceled")
        case .failed:
            print("email failed")
        case .saved:
            print("email saved to the draft")
        case .sent:
            print("email sent successfully")
        }
        dismiss(animated: true, completion: nil)
    }
    

}

