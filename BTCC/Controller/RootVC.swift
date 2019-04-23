//
//  RootVC.swift
//  BTCC
//
//  Created by Lahari Ganti on 4/23/19.
//  Copyright © 2019 Lahari Ganti. All rights reserved.
//

import UIKit

class RootVC: UIViewController {
    let textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.layer.cornerRadius = 8
        tf.clipsToBounds = true
        tf.backgroundColor = .white
        tf.layer.borderColor = UIColor.lightBackground.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.setLeftPaddingPoints(10)
        tf.setRightPaddingPoints(10)
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkBackground
        view.addSubview(textField)
        setupTextField()
    }

    private func setupTextField() {
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -64).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
