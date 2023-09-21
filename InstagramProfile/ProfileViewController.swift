//
//  ProfileViewController.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/18.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let assetImageArray: [String] = ["1", "2", "3", "4", "5", "6", "7"]
    
    let userNameLabel: UILabel = {
        $0.text = "nabaecamp"
        $0.font = .boldSystemFont(ofSize: 18)
        $0.textColor = .black
        return $0
    }(UILabel())
    
    let optionButton: UIButton = {
        let btImage = UIImage(named: "Menu")
        $0.setImage(btImage, for: .normal)
        return $0
    }(UIButton())
    
    let backButton: UIButton = {
        let btIcon = UIImage(systemName: "chevron.left")
        $0.setImage(btIcon, for: .normal)
        $0.tintColor = .black
        return $0
    }(UIButton())
    
    let profileImage: UIImageView = {
        $0.image = UIImage(named: "르탄이")
        return $0
    }(UIImageView())
    
    let postCountLabel: UILabel = {
        $0.text = "7"
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
    
    let separator: UIView = {
        $0.backgroundColor = .lightGray
        return $0
    }(UIView())
    
    let gridImageView: UIImageView = {
        $0.image = UIImage(named: "Grid")
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    let tripleSectionStackView: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 2
        return $0
    }(UIStackView())
    
    let gridImageContainer: UIView = UIView()
    
    let separator2: UIView = {
        $0.backgroundColor = .lightGray
        return $0
    }(UIView())
    
    let bottomView: UIView = {
        $0.backgroundColor = .systemGray6
        return $0
    }(UIView())
    
    let gridImageSeparator: UIView = {
        $0.backgroundColor = .black
        return $0
    }(UIView())
    
    let personIconImageView: UIImageView = {
        $0.image = UIImage(systemName: "person.fill")
        $0.tintColor = .black
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setConstraints()
        setAddTarget()
    }
    
    func setUI() {
        view.backgroundColor = .white
        self.title = "nabaecamp"
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.addSubview(userNameLabel)
        view.addSubview(optionButton)
        view.addSubview(backButton)
        view.addSubview(profileImage)
        view.addSubview(countInfoStackView)
        view.addSubview(userInfoStackView)
        view.addSubview(middleBarStackView)
        view.addSubview(separator)
        view.addSubview(tripleSectionStackView)
        gridImageContainer.addSubview(gridImageView)
        gridImageContainer.addSubview(gridImageSeparator)
        view.addSubview(separator2)
        view.addSubview(bottomView)
        bottomView.addSubview(personIconImageView)
        view.addSubview(collectionView)
        
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
        
        tripleSectionStackView.addArrangedSubview(gridImageContainer)
        tripleSectionStackView.addArrangedSubview(UIView())
        tripleSectionStackView.addArrangedSubview(UIView())
    }
    
    func setConstraints() {
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.centerX.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        
        optionButton.snp.makeConstraints { make in
            make.centerY.equalTo(userNameLabel.snp.centerY)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-16)
        }
        
        backButton.snp.makeConstraints { make in
            make.centerY.equalTo(userNameLabel.snp.centerY)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(16)
        }
        
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(14)
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
        
        separator.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.top.equalTo(middleBarStackView.snp.bottom).offset(15)
            make.left.right.equalToSuperview()
        }
        
        tripleSectionStackView.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(0)
            make.left.right.equalToSuperview()
            make.height.equalTo(40)
        }
        
        gridImageView.snp.makeConstraints { make in
            make.width.equalTo(22.5)
            make.height.equalTo(22.5)
            make.center.equalTo(gridImageContainer)
        }
        
        gridImageSeparator.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.left.right.equalTo(gridImageContainer)
            make.bottom.equalTo(gridImageContainer)
        }
        
        separator2.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
            make.left.right.equalToSuperview()
        }
        
        bottomView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.height.equalTo(85)
            make.bottom.equalToSuperview()
        }
        
        personIconImageView.snp.makeConstraints { make in
            make.center.equalTo(bottomView)
            make.width.height.equalTo(22.5)
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(tripleSectionStackView.snp.bottom).offset(2)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(bottomView.snp.top).offset(2)
        }
    }
    
    func setAddTarget() {
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        optionButton.addTarget(self, action: #selector(optionButtonTapped), for: .touchUpInside)
    }
    
    @objc func backButtonTapped() {
        print("백버튼 눌림")
        dismiss(animated: true)
    }
    
    @objc func optionButtonTapped() {
        // 옵션 버튼이 탭되었을 때의 동작을 여기에 구현
        print("햄버거 눌림")
    }
}

extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return assetImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let imageView = UIImageView(frame: cell.contentView.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: assetImageArray[indexPath.item])
        
        cell.contentView.addSubview(imageView)
        
        return cell
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = (collectionView.frame.size.width - 4) / 3
        return CGSize(width: cellWidth, height: cellWidth)
    }
}
