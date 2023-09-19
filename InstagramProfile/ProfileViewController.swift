//
//  ProfileViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/18.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {

    
    struct VCPreView: PreviewProvider {
        static var previews: some View {
            ProfileViewController().toPreview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    
    func setUI() {
        view.backgroundColor = .white
    }
}
