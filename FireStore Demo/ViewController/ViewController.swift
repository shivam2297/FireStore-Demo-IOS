//
//  ViewController.swift
//  FireStore Demo
//
//  Created by Daffolspmac-67 on 08/03/19.
//  Copyright © 2019 Daffolspmac-67. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

//        FirebaseHelperFactory.firebaseHelper().addData()
    }
    @IBAction func getDataBtnTapped(_ sender: Any) {
        FirebaseHelperFactory.firebaseHelper().readData()
    }

}

