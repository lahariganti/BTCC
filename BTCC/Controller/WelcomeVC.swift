//
//  WelcomeVC.swift
//  BTCC
//
//  Created by Lahari Ganti on 4/23/19.
//  Copyright © 2019 Lahari Ganti. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var currencyPickerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        configureSubviews()
        currencyPickerButton.addTarget(self, action: #selector(currencyPickerButtonPressed), for: .touchUpInside)
    }

    private func configureSubviews() {
        currencyPickerButton.backgroundColor = .btccDarkGreen
        currencyPickerButton.layer.cornerRadius = 8
        currencyPickerButton.clipsToBounds = true
        
        guard let userName = UserDefaults.standard.value(forKey: KeyConstants.userName) else { return }
            welcomeLabel.text = "Welcome, \(userName)!"
        }


    @objc func currencyPickerButtonPressed() {
        self.present(UINavigationController(rootViewController: ConversionVC(currency: "INR")), animated: true, completion: nil)
    }
}
