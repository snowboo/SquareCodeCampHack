//
//  EmailReceiptController.swift
//  ReaderSDKSample
//
//  Created by Render Media on 8/16/18.
//  Copyright © 2018 Square, Inc. All rights reserved.
//

import UIKit
import SquareReaderSDK

protocol EmailReceiptViewControllerDelegate: class {
    
}

final class EmailReceiptViewController: BaseViewController {
    
    public weak var delegate: EmailReceiptViewControllerDelegate?
    private lazy var submitButton = PrimaryButton(title: "OK", target: self, selector: #selector(submitButtonTapped))
    
    private let emailBox = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    private let phonenumberBox = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    private let nothanksBox = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let email = "Email"
        
        emailBox.font = UIFont.systemFont(ofSize: 15)
        emailBox.borderStyle = UITextBorderStyle.roundedRect
        emailBox.autocorrectionType = UITextAutocorrectionType.no
        emailBox.keyboardType = UIKeyboardType.default
        emailBox.returnKeyType = UIReturnKeyType.done
        emailBox.clearButtonMode = UITextFieldViewMode.whileEditing;
        emailBox.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        emailBox.delegate = self as? UITextFieldDelegate
        emailBox.frame.origin.x = UIScreen.main.bounds.width/2 - emailBox.frame.width/2
        emailBox.frame.origin.y = UIScreen.main.bounds.height/2
        
        phonenumberBox.font = UIFont.systemFont(ofSize: 15)
        phonenumberBox.borderStyle = UITextBorderStyle.roundedRect
        phonenumberBox.autocorrectionType = UITextAutocorrectionType.no
        phonenumberBox.keyboardType = UIKeyboardType.default
        phonenumberBox.returnKeyType = UIReturnKeyType.done
        phonenumberBox.clearButtonMode = UITextFieldViewMode.whileEditing;
        phonenumberBox.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        phonenumberBox.delegate = self as? UITextFieldDelegate
        phonenumberBox.frame.origin.x = UIScreen.main.bounds.width/2 - phonenumberBox.frame.width/2
        phonenumberBox.frame.origin.y = UIScreen.main.bounds.height/2 - phonenumberBox.frame.height - 10.0
        
        nothanksBox.font = UIFont.systemFont(ofSize: 15)
        nothanksBox.backgroundColor = UIColor.white
        nothanksBox.layer.cornerRadius = 5.0
        nothanksBox.layer.masksToBounds = true
        
        nothanksBox.text = "    No Thanks"
        nothanksBox.frame.origin.x = UIScreen.main.bounds.width/2 - nothanksBox.frame.width/2
        nothanksBox.frame.origin.y = UIScreen.main.bounds.height/2 + nothanksBox.frame.height + 10.0
        
            
        self.view.addSubview(emailBox)
        self.view.addSubview(phonenumberBox)
        self.view.addSubview(nothanksBox)
        
        
        //titleLabel.text = email
        //buttonsStackView.addArrangedSubview(submitButton)
    }
    
    @objc private func submitButtonTapped() {
        //showAlert(title: "Thank You!", message: "Your donation is greatly appreciated")
        
    }
        
}
