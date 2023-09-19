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
        $0.font = .boldSystemFont(ofSize: 16.5)
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
        $0.font = .boldSystemFont(ofSize: 16.5)
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
        $0.font = .boldSystemFont(ofSize: 16.5)
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
    
    let userInfo: UILabel = {
        $0.text = "르탄이"
        $0.font = .boldSystemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    let userInfo2: UILabel = {
        $0.text = "iOS Developer 🍎"
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    let userInfo3: UILabel = {
        $0.text = "spartacodingclub.kr"
        $0.textColor = .systemBlue
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    let userInfoStackView: UIStackView = {
        $0.axis = .vertical
        return $0
    }(UIStackView())
    
    let followButton: UIButton = {
        $0.setTitle("Follow", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
//        $0.layer.borderWidth = 1.5
//        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.backgroundColor = .systemBlue
        return $0
    }(UIButton())
    
    let messageButton: UIButton = {
        $0.setTitle("Message", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
        $0.layer.borderWidth = 1.5
        $0.layer.borderColor = UIColor.lightGray.cgColor
        return $0
    }(UIButton())
    
    let moreButton: UIButton = {
        let btImage = UIImage(named: "More")
        $0.setImage(btImage, for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 4
        $0.layer.borderWidth = 1.5
        $0.layer.borderColor = UIColor.lightGray.cgColor
        return $0
    }(UIButton())
    
    let middleBarStackView: UIStackView = {
        $0.axis = .horizontal
        $0.spacing = 8
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
        view.addSubview(userInfoStackView)
        view.addSubview(middleBarStackView)
        
        postStackView.addArrangedSubview(postCountLabel)
        postStackView.addArrangedSubview(postLabel)
        
        followerStackView.addArrangedSubview(followerCountLabel)
        followerStackView.addArrangedSubview(followerLabel)
        
        followingStackView.addArrangedSubview(followingCountLabel)
        followingStackView.addArrangedSubview(followingLabel)
        
        countInfoStackView.addArrangedSubview(postStackView)
        countInfoStackView.addArrangedSubview(followerStackView)
        countInfoStackView.addArrangedSubview(followingStackView)
        
        userInfoStackView.addArrangedSubview(userInfo)
        userInfoStackView.addArrangedSubview(userInfo2)
        userInfoStackView.addArrangedSubview(userInfo3)
        
        middleBarStackView.addArrangedSubview(followButton)
        middleBarStackView.addArrangedSubview(messageButton)
        middleBarStackView.addArrangedSubview(moreButton)
        
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
        
        userInfoStackView.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(14)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(15)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(28)
        }
        
        userInfo.snp.makeConstraints { make in
            make.height.equalTo(19)
        }
        
        userInfo2.snp.makeConstraints { make in
            make.height.equalTo(19)
        }
        
        userInfo3.snp.makeConstraints { make in
            make.height.equalTo(19)
        }
        
        middleBarStackView.snp.makeConstraints { make in
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(15)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-15)
            make.top.equalTo(userInfoStackView.snp.bottom).offset(15)
        }
        
        moreButton.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        followButton.snp.makeConstraints { make in
            make.height.equalTo(moreButton.snp.height)
            make.width.equalTo(messageButton.snp.width)
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
        print("햄버거 눌림")
    }
}
