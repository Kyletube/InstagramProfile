//
//  ProfileViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/18.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let profileImage: UIImageView = {
        $0.image = UIImage(named: "르탄이")
       return $0
    }(UIImageView())
    
    let postCountLabel: UILabel = {
        $0.text = "0"
        $0.font = .systemFont(ofSize: 16.5)
       return $0
    }(UILabel())
    
    let postLabel: UILabel = {
        $0.text = "post"
        $0.font = .systemFont(ofSize: 14)
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    let postStackView: UIStackView = {
        $0.axis = .vertical
        $0.spacing = 1
        $0.alignment = .center
        return $0
    }(UIStackView())
    
    let followerCountLabel: UILabel = {
        $0.text = "0"
        $0.font = .systemFont(ofSize: 16.5)
        return $0
    }(UILabel())
    
    let followerLabel: UILabel = {
        $0.text = "follower"
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    let followerStackView: UIStackView = {
        $0.axis = .vertical
        $0.spacing = 1
        $0.alignment = .center
        return $0
    }(UIStackView())
    
    let followingCountLabel: UILabel = {
        $0.text = "0"
        $0.font = .systemFont(ofSize: 16.5)
        return $0
    }(UILabel())
    
    let followingLabel: UILabel = {
        $0.text = "following"
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    let followingStackView: UIStackView = {
        $0.axis = .vertical
        $0.spacing = 1
        $0.alignment = .center
        return $0
    }(UIStackView())
    
    let countInfoStackView: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        return $0
    }(UIStackView())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        addNavOptionButton()
    }
    
    func setUI() {
        view.backgroundColor = .white
        self.title = "nabaecamp"
        
        view.addSubview(profileImage)
        view.addSubview(countInfoStackView)
        
        postStackView.addArrangedSubview(postCountLabel)
        postStackView.addArrangedSubview(postLabel)
        
        followerStackView.addArrangedSubview(followerCountLabel)
        followerStackView.addArrangedSubview(followerLabel)
        
        followingStackView.addArrangedSubview(followingCountLabel)
        followingStackView.addArrangedSubview(followingLabel)
        
        countInfoStackView.addArrangedSubview(postStackView)
        countInfoStackView.addArrangedSubview(followerStackView)
        countInfoStackView.addArrangedSubview(followingStackView)
        
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(14)
            make.left.equalToSuperview().offset(14)
            make.width.equalTo(88)
            make.height.equalTo(88)
        }
        
        countInfoStackView.snp.makeConstraints { make in
            make.centerY.equalTo(profileImage.snp.centerY)
            make.left.equalTo(profileImage.snp.right).offset(28)
            make.right.equalToSuperview().offset(-28)
        }
       
        
        
        
    }
    
    func addNavOptionButton() {
            let optionButton = UIButton(type: .custom)
            optionButton.setImage(UIImage(named: "Menu"), for: .normal)
            optionButton.addTarget(self, action: #selector(optionButtonTapped), for: .touchUpInside)
            let optionBarButton = UIBarButtonItem(customView: optionButton)
            navigationItem.rightBarButtonItem = optionBarButton
        }

    @objc func optionButtonTapped() {
        // 옵션 버튼이 탭되었을 때의 동작을 여기에 구현
    }
}
