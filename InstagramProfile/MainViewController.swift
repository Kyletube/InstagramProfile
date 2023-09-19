//
//  MainViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/15.
//

import UIKit
import SwiftUI
import SnapKit


class MainViewController: UIViewController {
    
    let profileButton: UIButton = {
        $0.setTitle("프로필 보기", for: .normal)
        $0.setTitleColor(UIColor.black, for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8.0
        $0.layer.borderWidth = 1.0
        $0.layer.borderColor = UIColor.black.cgColor
        return $0
    }(UIButton(type: .custom))
    
    struct VCPreView: PreviewProvider {
        static var previews: some View {
            MainViewController().toPreview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setAddTarget()
    }
    
    func setUI() {
        view.backgroundColor = .white
        
        view.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(40)
        }
    }
    
    func setAddTarget() {
        profileButton.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
    }
    
    @objc func profileButtonTapped() {
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
}
