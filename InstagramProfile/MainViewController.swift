//
//  MainViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/15.
//

import UIKit
import SwiftUI


class MainViewController: UIViewController {

    struct VCPreView:PreviewProvider {
        static var previews: some View {
            MainViewController().toPreview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }
}
